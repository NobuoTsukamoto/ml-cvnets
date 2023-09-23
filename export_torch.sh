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

