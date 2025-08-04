https://github.com/AUTOMATIC1111

drit -v /home/me/Models/alt/checkpoints/:/home/me/stable-diffusion-webui/ -v automatic1111:/home/ubuntu/stable-diffusion-webui -p 127.0.0.1:7860:7860 --gpus all automatic1111:latest

drit -v /home/me/Models/alt/checkpoints/:/home/ubuntu/stable-diffusion-webui/models/Stable-diffusion -v automatic1111:/home/ubuntu/stable-diffusion-webui -p 127.0.0.1:7860:7860 --gpus all automatic1111:latest

docker exec -it $(dcf) bash

drit -v automatic1111:/home/ubuntu/stable-diffusion-webui -p 127.0.0.1:7860:7860 --gpus all automatic1111:latest bash
