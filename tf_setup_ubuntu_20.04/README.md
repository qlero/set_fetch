Series of scripts to set up my python environment with a GTX980ti on Linux.

1. Download Anaconda [here](https://docs.anaconda.com/anaconda/install/linux/) and install:

```sh
cd <path>
sudo apt-get install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6
bash Anaconda3-20<xx>.<xx>-Linux-x86_64.sh
```

> ``bash VIDIA-Linux-x86_64-460.39.run``

2. Download Nvidia driver [here](https://www.nvidia.com/en-us/geforce/drivers/) and install:

```sh
cd <path>
bash NVIDIA-Linux-x86_64-<xxx>.<xx>.run
```

> ``bash NVIDIA-Linux-x86_64-460.39.run``

3. Download Nvidia CUDA toolkit [here](https://developer.nvidia.com/cuda-toolkit-archive) (for Ubuntu: [here](https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&target_distro=Ubuntu&target_version=2004&target_type=deblocal)):

```sh
wget https://developer.download.nvidia.com/compute/cuda/11.2.0/local_installers/cuda_<xx>.<x>.<x>_<xxx>.<xx>.<xx>_linux.run
sudo sh cuda_<xx>.<x>.<x>_<xxx>.<xx>.<xx>_linux.run
```

4. Update PATH

``sh
PATH=$PATH:/usr/local/cuda-<xx>.<x>/bin
``

5. Update LD\_LIBRARY\_PATH via .bashrc

``sh
echo 'export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda/include:$LD_LIBRARY_PATH' >> ~/.bashrc
source ~/.bashrc
``

6. Install the nvidia cuda toolkit

```sh
sudo apt install nvidia-cuda-toolkit
```

7. Install and run modprobe (helps debugging, thanks to [1Mr-Styler](https://github.com/tensorflow/tensorflow/issues/19266#issuecomment-399686258)):

```sh
sudo apt install nvidia-modprobe
nvidia-modprobe
```

8. Setting Python:

```sh
pip install tensorflow
python
>>> import tensorflow as tf
>>> tf.config.list_physical_devices("GPU")
```

It should return something similar to:

> ``[PhysicalDevice(name='/physical_device:GPU:0', device_type='GPU')]``

**Various useful commands**:

```sh
nvidia-smi
lspci | grep -i nvidia
cat /proc/driver/nvidia/version
nvcc -V
whereis cuda
```

**Useful link**:

- https://towardsdatascience.com/installing-tensorflow-gpu-in-ubuntu-20-04-4ee3ca4cb75d
