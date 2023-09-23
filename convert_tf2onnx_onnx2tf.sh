onnx2tf -i ./mobilevit_s.onnx -osd -cotof
python -m tf2onnx.convert --saved-model saved_model/ --output saved_model/mobilevit_s_float32.onnx
cp saved_model/mobilevit_s_float32.onnx saved_model/mobilevit_s_float32_opt.onnx
spo4onnx -if saved_model/mobilevit_s_float32_opt.onnx
mv saved_model/mobilevit_s_float* .
rm -rf saved_model/

onnx2tf -i ./mobilevit_xs.onnx -osd -cotof
python -m tf2onnx.convert --saved-model saved_model/ --output saved_model/mobilevit_xs_float32.onnx
cp saved_model/mobilevit_xs_float32.onnx saved_model/mobilevit_xs_float32_opt.onnx
spo4onnx -if saved_model/mobilevit_xs_float32_opt.onnx
mv saved_model/mobilevit_xs_float* .
rm -rf saved_model/

onnx2tf -i ./mobilevit_xxs.onnx -osd -cotof
python -m tf2onnx.convert --saved-model saved_model/ --output saved_model/mobilevit_xxs_float32.onnx
cp saved_model/mobilevit_xxs_float32.onnx saved_model/mobilevit_xxs_float32_opt.onnx
spo4onnx -if saved_model/mobilevitxx_s_float32_opt.onnx
mv saved_model/mobilevit_xxs_float* .
rm -rf saved_model/

onnx2tf -i ./mobilevitv2-0.5.onnx -osd -cotof
python -m tf2onnx.convert --saved-model saved_model/ --output saved_model/mobilevitv2-0.5_float32.onnx
cp saved_model/mobilevitv2-0.5_float32.onnx saved_model/mobilevitv2-0.5_float32_opt.onnx
spo4onnx -if saved_model/mobilevitv2-0.5_float32_opt.onnx
mv saved_model/mobilevitv2-0.5_float* .
rm -rf saved_model/

onnx2tf -i ./mobilevitv2-0.75.onnx -osd -cotof
python -m tf2onnx.convert --saved-model saved_model/ --output saved_model/mobilevitv2-0.75_float32.onnx
cp saved_model/mobilevitv2-0.75_float32.onnx saved_model/mobilevitv2-0.75_float32_opt.onnx
spo4onnx -if saved_model/mobilevitv2-0.75_float32_opt.onnx
mv saved_model/mobilevitv2-0.75_float* .
rm -rf saved_model/

onnx2tf -i ./mobilevitv2-1.0.onnx -osd -cotof
python -m tf2onnx.convert --saved-model saved_model/ --output saved_model/mobilevitv2-1.0_float32.onnx
cp saved_model/mobilevitv2-1.0_float32.onnx saved_model/mobilevitv2-1.0_float32_opt.onnx
spo4onnx -if saved_model/mobilevitv2-1.0_float32_opt.onnx
mv saved_model/mobilevitv2-1.0_float* .
rm -rf saved_model/

onnx2tf -i ./mobilevitv2-1.25.onnx -osd -cotof
python -m tf2onnx.convert --saved-model saved_model/ --output saved_model/mobilevitv2-1.25_float32.onnx
cp saved_model/mobilevitv2-1.25_float32.onnx saved_model/mobilevitv2-1.25_float32_opt.onnx
spo4onnx -if saved_model/mobilevitv2-1.25_float32_opt.onnx
mv saved_model/mobilevitv2-1.25_float* .
rm -rf saved_model/

onnx2tf -i ./mobilevitv2-1.75.onnx -osd -cotof
python -m tf2onnx.convert --saved-model saved_model/ --output saved_model/mobilevitv2-1.75_float32.onnx
cp saved_model/mobilevitv2-1.75_float32.onnx saved_model/mobilevitv2-1.75_float32_opt.onnx
spo4onnx -if saved_model/mobilevitv2-1.75_float32_opt.onnx
mv saved_model/mobilevitv2-1.75_float* .
rm -rf saved_model/

onnx2tf -i ./mobilevitv2-2.0.onnx -osd -cotof
python -m tf2onnx.convert --saved-model saved_model/ --output saved_model/mobilevitv2-2.0_float32.onnx
cp saved_model/mobilevitv2-2.0_float32.onnx saved_model/mobilevitv2-2.0_float32_opt.onnx
spo4onnx -if saved_model/mobilevitv2-2.0_float32_opt.onnx
mv saved_model/mobilevitv2-2.0_float* .
rm -rf saved_model/

