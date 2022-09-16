# FROM nvidia/cuda:11.3.0-base-ubuntu16.04

# use one of the images from this repository: https://github.com/centreborelli/ipol-docker-images/
FROM registry.ipol.im/ipol:v1-py3.8-pytorch-gpu

RUN pip3 install pyyaml paramiko pandas requests tensorboard tensorboardX tqdm gdown

# # ENV TORCH_CUDA_ARCH_LIST=Pascal

# # install additional debian packages
# COPY .ipol/packages.txt packages.txt
# RUN apt-get update && apt-get install -y $(cat packages.txt) && rm -rf /var/lib/apt/lists/* && rm packages.txt

# # copy the requirements.txt and install python packages
# COPY afm_cvpr2019/requirements.txt requirements.txt
# RUN pip3 install --no-cache-dir -r requirements.txt && rm requirements.txt

# # copy the code to $bin
ENV bin /workdir/bin/
RUN mkdir -p $bin
WORKDIR $bin


COPY . .

# RUN wget "https://drive.google.com/file/d/15M1BpH2Q5kM9yARwXb2wSm8IKJIn-0CQ/view?usp=sharing" -O /workdir/bin/afm_cvpr2019/experiments/atrous/weight/model_final.pth.tar
# RUN cd /workdir/bin/afm_cvpr2019/lib && make

# # the execution will happen in the folder /workdir/exec
# # it will be created by IPOL

# # some QoL tweaks
# ENV PYTHONDONTWRITEBYTECODE 1
# ENV PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION python
# ENV PATH $bin:$PATH

# # $HOME is writable by the user `ipol`, but 
# ENV HOME /home/ipol


# RUN mkdir -p $HOME
# WORKDIR $HOME


# RUN pwd
# RUN ls


# Download big files
RUN mkdir -p $HOME/train_logs
RUN gdown 15M1BpH2Q5kM9yARwXb2wSm8IKJIn-0CQ -O $HOME/train_logs/ASMAfinal.zip
# WORKDIR $HOME/train_logs
# RUN unzip $HOME/train_logs/ASMAfinal.zip
# RUN rm $HOME/train_logs/ASMAfinal.zip


# # chmod 777 so that any user can use the HOME, in case the docker is run with -u 1001:1001
# RUN groupadd -g 1000 ipol && useradd -m -u 1000 -g 1000 ipol -d $HOME && chmod -R 777 $HOME
# USER ipol