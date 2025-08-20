ARG BASE_IMAGE=pytorch/pytorch:2.7.1-cuda12.8-cudnn9-devel

FROM ${BASE_IMAGE} AS base

ARG FORK_OWNER=tdrussell

RUN apt-get update && apt-get install -y \
    git

RUN git clone --recurse-submodules https://github.com/${FORK_OWNER}/diffusion-pipe.git

RUN pip install -r diffusion-pipe/requirements.txt
