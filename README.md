# replications
Install diaries, container images, and guides for running or training that new model that just came out

For builds we will mainly be focusing on / assuming RTX 3090, or CUDA ARCH 8.6 (ampere)

## One-liner replications  

Wan2GP:
```bash
docker run -v wgp:/workspace/wan2gp --gpus all -p 7860:7860 marksverdhei/wan2gp:latest
```

automatic1111 stable-diffusion webui:
```bash
docker run -it -v automatic1111:/home/ubuntu/stable-diffusion-webui -p 7860:7860 --gpus all automatic1111:latest
```
