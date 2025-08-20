# Wan2GP  

This docker image contains a build targeted at NVIDIA Ampere architecture

To build:

```bash
docker build -t wan2gp:latest .
```

To run
```bash
docker run -v wgp:/workspace/wan2gp --gpus all -p 7860:7860 marksverdhei/wan2gp:latest python wgp.py --listen
```

Docker compose:

```bash
export WGP_PORT=3000
export WGP_DIR=/path/to/Wan2GP
# If you have your model dir, outputs etc scattered around, 
# you can specify directly 
# export WGP_LORA_DIR=/path/to/lora
# export GPU_ID=1
# e.g. this config
export WGP_CONF=$PWD/wgp_config.json
docker compose up
```


Currently, there is a bug in wan2gp, where it will stop generating once no client is connected
to the gradio app. This is solved in my fork, which you can use at the tag marksverdhei/wan2gp:marksverdhei
Or build it like this
```bash
docker build --build-arg FORK_OWNER=marksverdhei -t wan2gp:latest .
```
