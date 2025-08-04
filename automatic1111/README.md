# AUTOMATIC1111 stable-diffusion-webui

https://github.com/AUTOMATIC1111

This is one of the most popular frontends for local image generation inference.

```bash
docker build -t automatic1111 .
```

```bash
export CHECKPOINTS=/path/to/your/checkpoints # if you have custom checkpoints
export LORAS=/path/to/your/loras
docker run -it \
  -v $CHECKPOINTS:/home/ubuntu/stable-diffusion-webui/models/Stable-diffusion \
  -v automatic1111:/home/ubuntu/stable-diffusion-webui \
  -p 127.0.0.1:7860:7860 \
  --gpus all \
  automatic1111:latest
```
