ARG BASE_IMAGE=pytorch/pytorch:2.6.0-cuda12.4-cudnn9-devel
FROM ${BASE_IMAGE}

RUN apt-get update && apt-get upgrade -y && apt-get install git -y
RUN pip install flash-attn==2.7.4.post1 --no-build-isolation

RUN git clone https://github.com/ace-step/ACE-Step.git
WORKDIR /workspace/ACE-Step
RUN pip install -e .

CMD ["acestep"]
