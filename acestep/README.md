# ACE-Step and ACE-Step lowmem

build:

docker build -t acestep .


run:

docker run --gpus all -it -p 7865:7865 acestep
