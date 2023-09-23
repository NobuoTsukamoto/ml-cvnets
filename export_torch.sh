wget https://docs-assets.developer.apple.com/ml-research/models/cvnets/classification/mobilevit_xxs.pt
wget https://docs-assets.developer.apple.com/ml-research/models/cvnets/classification/mobilevit_xxs.yaml
wget https://docs-assets.developer.apple.com/ml-research/models/cvnets/classification/mobilevit_xs.pt
wget https://docs-assets.developer.apple.com/ml-research/models/cvnets/classification/mobilevit_xs.yaml
wget https://docs-assets.developer.apple.com/ml-research/models/cvnets/classification/mobilevit_s.pt
wget https://docs-assets.developer.apple.com/ml-research/models/cvnets/classification/mobilevit_s.yaml
wget https://docs-assets.developer.apple.com/ml-research/models/cvnets-v2/classification/mobilevitv2/imagenet1k/256x256/mobilevitv2-0.5.pt
wget https://docs-assets.developer.apple.com/ml-research/models/cvnets-v2/classification/mobilevitv2/imagenet1k/256x256/mobilevitv2-0.5.yaml
wget https://docs-assets.developer.apple.com/ml-research/models/cvnets-v2/classification/mobilevitv2/imagenet1k/256x256/mobilevitv2-0.75.pt
wget https://docs-assets.developer.apple.com/ml-research/models/cvnets-v2/classification/mobilevitv2/imagenet1k/256x256/mobilevitv2-0.75.yaml
wget https://docs-assets.developer.apple.com/ml-research/models/cvnets-v2/classification/mobilevitv2/imagenet1k/256x256/mobilevitv2-1.0.pt
wget https://docs-assets.developer.apple.com/ml-research/models/cvnets-v2/classification/mobilevitv2/imagenet1k/256x256/mobilevitv2-1.0.yaml
wget https://docs-assets.developer.apple.com/ml-research/models/cvnets-v2/classification/mobilevitv2/imagenet1k/256x256/mobilevitv2-1.25.pt
wget https://docs-assets.developer.apple.com/ml-research/models/cvnets-v2/classification/mobilevitv2/imagenet1k/256x256/mobilevitv2-1.25.yaml
wget https://docs-assets.developer.apple.com/ml-research/models/cvnets-v2/classification/mobilevitv2/imagenet1k/256x256/mobilevitv2-1.5.pt
wget https://docs-assets.developer.apple.com/ml-research/models/cvnets-v2/classification/mobilevitv2/imagenet1k/256x256/mobilevitv2-1.5.yaml
wget https://docs-assets.developer.apple.com/ml-research/models/cvnets-v2/classification/mobilevitv2/imagenet1k/256x256/mobilevitv2-1.75.pt
wget https://docs-assets.developer.apple.com/ml-research/models/cvnets-v2/classification/mobilevitv2/imagenet1k/256x256/mobilevitv2-1.75.yaml
wget https://docs-assets.developer.apple.com/ml-research/models/cvnets-v2/classification/mobilevitv2/imagenet1k/256x256/mobilevitv2-2.0.pt
wget https://docs-assets.developer.apple.com/ml-research/models/cvnets-v2/classification/mobilevitv2/imagenet1k/256x256/mobilevitv2-2.0.yaml

export CONFIG_FILE=/ml-cvnets/mobilevit_xxs.yaml
export MODEL_WEIGHTS=/ml-cvnets/mobilevit_xxs.pt
cvnets-convert-onnx --common.config-file $CONFIG_FILE --common.results-loc coreml_models_cls --model.classification.pretrained $MODEL_WEIGHTS  --conversion.coreml-extn mlmodel
mv coreml_models_cls/MobileViT.onnx coreml_models_cls/mobilevit_xxs.onnx
cp coreml_models_cls/mobilevit_xxs.onnx coreml_models_cls/mobilevit_xxs.org.onnx 

export CONFIG_FILE=/ml-cvnets/mobilevit_xs.yaml
export MODEL_WEIGHTS=/ml-cvnets/mobilevit_xs.pt
cvnets-convert-onnx --common.config-file $CONFIG_FILE --common.results-loc coreml_models_cls --model.classification.pretrained $MODEL_WEIGHTS  --conversion.coreml-extn mlmodel
mv coreml_models_cls/MobileViT.onnx coreml_models_cls/mobilevit_xs.onnx
cp coreml_models_cls/mobilevit_xs.onnx coreml_models_cls/mobilevit_xs.org.onnx 

export CONFIG_FILE=/ml-cvnets/mobilevit_s.yaml
export MODEL_WEIGHTS=/ml-cvnets/mobilevit_s.pt
cvnets-convert-onnx --common.config-file $CONFIG_FILE --common.results-loc coreml_models_cls --model.classification.pretrained $MODEL_WEIGHTS  --conversion.coreml-extn mlmodel
mv coreml_models_cls/MobileViT.onnx coreml_models_cls/mobilevit_s.onnx
cp coreml_models_cls/mobilevit_s.onnx coreml_models_cls/mobilevit_s.org.onnx 

export CONFIG_FILE=/ml-cvnets/mobilevitv2-0.5.yaml
export MODEL_WEIGHTS=/ml-cvnets/mobilevitv2-0.5.pt
cvnets-convert-onnx --common.config-file $CONFIG_FILE --common.results-loc coreml_models_cls --model.classification.pretrained $MODEL_WEIGHTS  --conversion.coreml-extn mlmodel
mv coreml_models_cls/MobileViTv2.onnx coreml_models_cls/mobilevitv2-0.5.onnx
cp coreml_models_cls/mobilevitv2-0.5.onnx coreml_models_cls/mobilevitv2-0.5.org.onnx

export CONFIG_FILE=/ml-cvnets/mobilevitv2-0.75.yaml
export MODEL_WEIGHTS=/ml-cvnets/mobilevitv2-0.75.pt
cvnets-convert-onnx --common.config-file $CONFIG_FILE --common.results-loc coreml_models_cls --model.classification.pretrained $MODEL_WEIGHTS  --conversion.coreml-extn mlmodel
mv coreml_models_cls/MobileViTv2.onnx coreml_models_cls/mobilevitv2-0.75.onnx
cp coreml_models_cls/mobilevitv2-0.75.onnx coreml_models_cls/mobilevitv2-0.75.org.onnx

export CONFIG_FILE=/ml-cvnets/mobilevitv2-1.0.yaml
export MODEL_WEIGHTS=/ml-cvnets/mobilevitv2-1.0.pt
cvnets-convert-onnx --common.config-file $CONFIG_FILE --common.results-loc coreml_models_cls --model.classification.pretrained $MODEL_WEIGHTS  --conversion.coreml-extn mlmodel
mv coreml_models_cls/MobileViTv2.onnx coreml_models_cls/mobilevitv2-1.0.onnx
cp coreml_models_cls/mobilevitv2-1.0.onnx coreml_models_cls/mobilevitv2-1.0.org.onnx

export CONFIG_FILE=/ml-cvnets/mobilevitv2-1.25.yaml
export MODEL_WEIGHTS=/ml-cvnets/mobilevitv2-1.25.pt
cvnets-convert-onnx --common.config-file $CONFIG_FILE --common.results-loc coreml_models_cls --model.classification.pretrained $MODEL_WEIGHTS  --conversion.coreml-extn mlmodel
mv coreml_models_cls/MobileViTv2.onnx coreml_models_cls/mobilevitv2-1.25.onnx
cp coreml_models_cls/mobilevitv2-1.25.onnx coreml_models_cls/mobilevitv2-1.25.org.onnx

export CONFIG_FILE=/ml-cvnets/mobilevitv2-1.5.yaml
export MODEL_WEIGHTS=/ml-cvnets/mobilevitv2-1.5.pt
cvnets-convert-onnx --common.config-file $CONFIG_FILE --common.results-loc coreml_models_cls --model.classification.pretrained $MODEL_WEIGHTS  --conversion.coreml-extn mlmodel
mv coreml_models_cls/MobileViTv2.onnx coreml_models_cls/mobilevitv2-1.5.onnx
cp coreml_models_cls/mobilevitv2-1.5.onnx coreml_models_cls/mobilevitv2-1.5.org.onnx

export CONFIG_FILE=/ml-cvnets/mobilevitv2-1.75.yaml
export MODEL_WEIGHTS=/ml-cvnets/mobilevitv2-1.75.pt
cvnets-convert-onnx --common.config-file $CONFIG_FILE --common.results-loc coreml_models_cls --model.classification.pretrained $MODEL_WEIGHTS  --conversion.coreml-extn mlmodel
mv coreml_models_cls/MobileViTv2.onnx coreml_models_cls/mobilevitv2-1.75.onnx
cp coreml_models_cls/mobilevitv2-1.75.onnx coreml_models_cls/mobilevitv2-1.75.org.onnx

export CONFIG_FILE=/ml-cvnets/mobilevitv2-2.0.yaml
export MODEL_WEIGHTS=/ml-cvnets/mobilevitv2-2.0.pt
cvnets-convert-onnx --common.config-file $CONFIG_FILE --common.results-loc coreml_models_cls --model.classification.pretrained $MODEL_WEIGHTS  --conversion.coreml-extn mlmodel
mv coreml_models_cls/MobileViTv2.onnx coreml_models_cls/mobilevitv2-2.0.onnx
cp coreml_models_cls/mobilevitv2-2.0.onnx coreml_models_cls/mobilevitv2-2.0.org.onnx

