#!/usr/bin/env bash

distribution="ubuntu20.04" && curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add - && curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list

sudo apt-get install -y nvidia-docker2

sudo systemctl restart docker

docker pull tensorflow/tensorflow:latest-gpu-jupyter

docker run --gpus all --rm nvidia/cuda nvidia-smi

# docker run [-it] [--rm] [-p hostPort:containerPort] tensorflow/tensorflow[:tag] [command]
