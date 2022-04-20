#!/usr/bin/env bash

# Add NVIDIA package repositories
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-ubuntu1804.pin
sudo mv cuda-ubuntu1804.pin /etc/apt/preferences.d/cuda-repository-pin-600
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
sudo add-apt-repository "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/ /"
sudo apt-get update

wget http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64/nvidia-machine-learning-repo-ubuntu1804_1.0.0-1_amd64.deb

sudo apt install ./nvidia-machine-learning-repo-ubuntu1804_1.0.0-1_amd64.deb
sudo apt-get update

wget https://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64/libnvinfer7_7.1.3-1+cuda11.0_amd64.deb
sudo apt install ./libnvinfer7_7.1.3-1+cuda11.0_amd64.deb
sudo apt-get update

# Install development and runtime libraries (~4GB)
sudo apt-get install --no-install-recommends \
    cuda-11-0 \
    libcudnn8=8.0.4.30-1+cuda11.0  \
    libcudnn8-dev=8.0.4.30-1+cuda11.0

# The following NEW packages will be installed:
#  cuda-11-0 cuda-command-line-tools-11-0 cuda-compiler-11-0 cuda-cudart-dev-11-0 cuda-cuobjdump-11-0 cuda-cupti-11-0 cuda-cupti-dev-11-0 cuda-demo-suite-11-0
#  cuda-documentation-11-0 cuda-driver-dev-11-0 cuda-drivers cuda-drivers-470 cuda-gdb-11-0 cuda-libraries-11-0 cuda-libraries-dev-11-0 cuda-memcheck-11-0 cuda-nsight-11-0
#  cuda-nsight-compute-11-0 cuda-nsight-systems-11-0 cuda-nvcc-11-0 cuda-nvdisasm-11-0 cuda-nvml-dev-11-0 cuda-nvprof-11-0 cuda-nvprune-11-0 cuda-nvrtc-11-0
#  cuda-nvrtc-dev-11-0 cuda-nvtx-11-0 cuda-nvvp-11-0 cuda-runtime-11-0 cuda-samples-11-0 cuda-sanitizer-11-0 cuda-toolkit-11-0 cuda-tools-11-0 cuda-visual-tools-11-0
#  default-jre freeglut3 freeglut3-dev libcublas-dev-11-0 libcudnn8-dev libcufft-11-0 libcufft-dev-11-0 libcurand-11-0 libcurand-dev-11-0 libcusolver-11-0
#  libcusolver-dev-11-0 libcusparse-11-0 libcusparse-dev-11-0 libglu1-mesa-dev libnpp-11-0 libnpp-dev-11-0 libnvidia-cfg1-470 libnvidia-common-470 libnvidia-compute-470
#  libnvidia-decode-470 libnvidia-encode-470 libnvidia-extra-470 libnvidia-fbc1-470 libnvidia-gl-470 libnvidia-ifr1-470 libnvjpeg-11-0 libnvjpeg-dev-11-0 libxmu-dev
#  libxmu-headers nsight-compute-2021.2.0 nsight-systems-2020.3.2 nvidia-compute-utils-470 nvidia-dkms-470 nvidia-driver-470 nvidia-kernel-common-470
#  nvidia-kernel-source-470 nvidia-modprobe nvidia-utils-470 openjdk-11-jre xserver-xorg-video-nvidia-470


# Reboot. Check that GPUs are visible using the command: nvidia-smi

# Install TensorRT. Requires that libcudnn8 is installed above.
sudo apt-get install -y --no-install-recommends libnvinfer7=7.1.3-1+cuda11.0 \
    libnvinfer-dev=7.1.3-1+cuda11.0 \
    libnvinfer-plugin7=7.1.3-1+cuda11.0
