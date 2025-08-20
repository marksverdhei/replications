# ACE-Step and ACE-Step lowmem

build:

docker build -t acestep .


run:

docker run --gpus all -it -p 7865:7865 acestep


Low-vram SFT:
For low-vram-training we use woct0rdho's fork.
It requires some dataset conversion but we will apply the full pipeline


```bash
docker build --build-arg FORK_OWNER=woct0rdho -t acestep:woct0rdho -f Dockerfile .
```
