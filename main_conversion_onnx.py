#
# For licensing see accompanying LICENSE file.
# Copyright (C) 2023 Apple Inc. All Rights Reserved.
#

import os
from typing import List, Optional

import torch

from common import TMP_RES_FOLDER
from cvnets import get_model
from options.opts import get_conversion_arguments
from utils import logger
from utils.pytorch_to_coreml import create_rand_tensor


def main_worker_conversion(args: Optional[List[str]] = None):
    opts = get_conversion_arguments(args=args)

    # set coreml conversion flag to true
    setattr(opts, "common.enable_coreml_compatible_module", True)

    norm_layer = getattr(opts, "model.normalization.name", "batch_norm")
    if norm_layer.find("sync") > -1:
        norm_layer = norm_layer.replace("sync_", "")
        setattr(opts, "model.normalization.name", norm_layer)

    model = get_model(opts)
    model_name = model.__class__.__name__

    model.eval()

    coreml_extn = getattr(opts, "conversion.coreml_extn", "mlmodel")

    results_folder = getattr(opts, "common.results_loc", TMP_RES_FOLDER)
    if not os.path.isdir(results_folder):
        os.makedirs(results_folder)

    model_dst_loc = "{}/{}.{}".format(results_folder, model_name, coreml_extn)

    if os.path.isfile(model_dst_loc):
        os.remove(model_dst_loc)

    torch.onnx.export(
        model,
        create_rand_tensor(opts=opts, device="cpu"),
        model_dst_loc.replace(f".{coreml_extn}", ".onnx"),
        verbose=True
    )

    print(model_dst_loc.replace(f".{coreml_extn}", ".onnx"),)

    logger.log("PyTorch model converted to CoreML successfully.")
    logger.log("CoreML model location: {}".format(model_dst_loc))


if __name__ == "__main__":
    main_worker_conversion()
