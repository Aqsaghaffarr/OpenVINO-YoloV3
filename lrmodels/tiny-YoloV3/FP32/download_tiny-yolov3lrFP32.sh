#!/bin/bash
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=15SfP7JBhke35AG4KZwkyJVEzy56_A-PH" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=15SfP7JBhke35AG4KZwkyJVEzy56_A-PH" -o tiny-YoloV3FP32.tar.gz
tar -zxvf tiny-YoloV3FP32.tar.gz
rm tiny-YoloV3FP32.tar.gz

