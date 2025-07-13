# Wan2GP  

This docker image contains a build targeted at NVIDIA ADA architecture

To build:

docker build -t wan2gp .  

To run

docker run --rm -v models:/workspace/wan2gp  --gpus all -p 7860:7860 wan2gp 


Right now we are running without sageattention bc of build difficulties, this one runs
flash attention
