#!/bin/bash

# WARNING: Run 'chmod +x run.sh' BEFORE BUILDING DOCKER CONTAINER

# example:
# bash run.sh ./1047.tif ./tmp

# GCP:
# sudo rm -rf xview && git clone https://github.com/ultralytics/xview && cp drive/f10BCE_e134.pt xview/checkpoint.pt
# sudo docker image prune -a && cd xview && chmod +x run.sh && sudo docker build -t friendlyhello . && sudo docker tag friendlyhello ultralytics/xview:v16
# time sudo docker run -it --memory=8g --cpus=1 ultralytics/xview:v16 bash -c './run.sh /1047.tif /tmp && cat /tmp/1047.tif.txt'
# sudo docker push ultralytics/xview:v16

python3 detect.py -image_folder $1 -output_folder $2
