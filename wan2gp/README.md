# Wan2GP  

This docker image contains a build targeted at NVIDIA Ampere architecture

To build:

```bash
docker build -t wan2gp .
```

To run
```bash
docker run --rm -v models:/workspace/wan2gp  --gpus all -p 7860:7860 wan2gp python wgp.py --server-port 7860 --listen
```

If you ran a local instance of Wan2GP first and happened to pull models, you might want to mount your checkpoints, output dir, and loras.
I run with these parameters:
```bash
docker run \
  -v /home/me/Wan2GP/ckpts:/workspace/Wan2GP/ckpts \
  -v /home/me/Wan2GP/outputs:/workspace/Wan2GP/outputs \
  -v /home/me/Wan2GP/loras:/workspace/Wan2GP/loras \
  -v /home/me/Wan2GP/loras:/workspace/Wan2GP/loras_i2v \
  -v /home/me/Wan2GP/wgp_config.json:/workspace/Wan2GP/wgp_config.json \
  -p 127.0.0.1:3001:3001 --gpus '"device=0"' -it \
  wan2gp python wgp.py --server-port 3001 --listen
```

