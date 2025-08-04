# Wan2GP  

This docker image contains a build targeted at NVIDIA Ampere architecture

To build:

```bash
docker build -t wan2gp:latest .
```

To run
```bash
docker run --rm -v models:/workspace/wan2gp  --gpus all -p 7860:7860 wan2gp python wgp.py --server-port 7860 --listen
```

Docker compose:

```bash
export WGP_PORT=3000
export WGP_DIR=/path/to/Wan2GP
export WGP_LORA_DIR=/path/to/lora
# If you want to use your second GPU
export WGPU_ID=1
# e.g. this config
export WGP_CONF=$PWD/wgp_config.json
docker compose up
```
