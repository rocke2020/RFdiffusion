# Usage

## install
```
create --name RFdiffusion -y python=3.10

pip install -q --no-cache-dir \
dgl==1.0.2+cu116 -f https://data.dgl.ai/wheels/cu116/repo.html \
torch==1.12.1+cu116 --extra-index-url https://download.pytorch.org/whl/cu116 \
e3nn==0.3.3 \
wandb==0.12.0 \
pynvml==11.0.0 \
git+https://github.com/NVIDIA/dllogger#egg=dllogger \
decorator==5.1.0 \
hydra-core==1.3.2 \
pyrsistent==0.19.3

pip install -q --no-cache-dir env/SE3Transformer

export CONDA_OVERRIDE_CUDA="11.6.2"
#export CONDA_ALWAYS_YES=yes
conda install -y nvidia/label/cuda-11.6.2::cuda-toolkit
conda install -y nvidia/label/cuda-11.6.2::cuda-tools
conda install -y nvidia/label/cuda-11.6.2::cuda-nvrtc
conda install -y nvidia/label/cuda-11.6.2::libcufile
conda install -y nvidia/label/cuda-11.6.2::libcusparse
conda install -y nvidia/label/cuda-11.6.2::cuda-cudart
conda install -y nvidia/label/cuda-11.6.2::cuda-cudart-dev
```