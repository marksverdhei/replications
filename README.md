# replications  

Docker one-liners that just work for the latest AI models.
nvidia only.

All images have been tested on RTX 3090, or CUDA ARCH 8.6 (ampere)

## Inference  

One-liner replications that assume docker, nvidia-container toolkit, and cuda arch 8.6 (e.g. RTX 3090).
For each program, you'll get a more elaborate explatation by looking at the readme of the specific dir.

### Video generation
[Wan2GP](/wan2gp/README.md) (10GB RAM, 6GB-24GB VRAM):
```bash
docker run --gpus all -it -p 7860:7860 -v wgp:/workspace/wan2gp marksverdhei/wan2gp:latest
```

### Image generation
[automatic1111](/automatic1111/README.md) (10GB RAM, 6GB VRAM):
```bash
docker run --gpus all -it -p 7860:7860 -v a1111:/home/ubuntu/stable-diffusion-webui automatic1111:latest
```

### Music generation

[YuE](/yue/README.md) (10GB RAM, 14GB VRAM):
```bash
docker run --gpus all -it -v yue:/workspace -v yueroot:/root yue:latest
```

