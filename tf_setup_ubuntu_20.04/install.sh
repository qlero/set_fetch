cd ~Downloads

# Anaconda install
wget https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh
sudo apt-get install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6
bash ~/Downloads/Anaconda3-2020.02-Linux-x86_64.sh

# Nvidia driver
wget https://us.download.nvidia.com/XFree86/Linux-x86_64/460.39/NVIDIA-Linux-x86_64-460.39.run
bash NVIDIA-Linux-x86_64-460.39.run

# CUDA
wget https://developer.download.nvidia.com/compute/cuda/11.2.0/local_installers/cuda_11.2.0_460.27.04_linux.run
sudo sh cuda_11.2.0_460.27.04_linux.run
echo 'PATH=$PATH:/usr/local/cuda-11.2/bin' >> ~/.bashrc

# cudnn
wget https://developer.nvidia.com/compute/machine-learning/cudnn/secure/8.1.0.77/11.2_20210127/cudnn-11.2-linux-x64-v8.1.0.77.tgz
tar -xvzf https://developer.nvidia.com/compute/machine-learning/cudnn/secure/8.1.0.77/11.2_20210127/cudnn-11.2-linux-x64-v8.1.0.77.tgz
sudo cp cuda/include/cudnn*.h /usr/local/cuda/include
sudo cp -P cuda/lib64/libcudnn* /usr/local/cuda/lib64
sudo chmod a+r /usr/local/cuda/include/cudnn*.h /usr/local/cuda/lib64/libcudnn*
echo 'export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda/include:$LD_LIBRARY_PATH' >> ~/.bashrc
source ~/.bashrc

# nvidia cuda toolkit
sudo apt install nvidia-cuda-toolkit

# modprobe
sudo apt install nvidia-modprobe
nvidia-modprobe

