ARG BASE_IMAGE=hiyouga/pytorch:th2.6.0-cu124-flashattn2.7.4-cxx11abi0-devel
FROM ${BASE_IMAGE}

RUN git clone https://github.com/ace-step/ACE-Step.git
WORKDIR /workspace/ACE-Step
RUN pip install -e .
