# replications
Install diaries, container images, and guides for running or training that new model that just came out

For builds we will mainly be focusing on / assuming RTX 3090, or CUDA ARCH 8.6 (ampere)

## One-liner replications  

One-liner replications that assume docker, nvidia-container toolkit, and cuda arch 8.6

Wan2GP:
```bash
docker run --gpus all -it -p 7860:7860 -v wgp:/workspace/wan2gp marksverdhei/wan2gp:latest
```

automatic1111 stable-diffusion webui:
```bash
docker run --gpus all -it -p 7860:7860 -v a1111:/home/ubuntu/stable-diffusion-webui automatic1111:latest
```
