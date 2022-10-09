# FROM ufoym/deepo:latest
FROM nvcr.io/nvidia/pytorch:21.11-py3 
MAINTAINER GZ 

RUN apt-get update && \
    apt-get -y install sudo
RUN pip install ipywidgets --user
# RUN pip install opencv-python-headless
# RUN pip install opencv-contrib-python-headless
RUN apt -y install screen
RUN pip install scikit-image
RUN pip install pytorch_lightning
RUN pip install -U albumentations
RUN pip install ray
RUN pip install captum
RUN pip install efficientnet_pytorch
RUN pip install segmentation_models_pytorch
RUN pip install einops  
RUN pip install imgaug
RUN pip uninstall -y opencv-python
RUN pip install opencv-contrib-python-headless==4.2.0.32
# RUN pip install bitfount

ARG USER_ID=1087
ARG GROUP_ID=1090
ARG USER=gzhang 
RUN addgroup --gid $GROUP_ID $USER 
RUN adduser --disabled-password --gecos '' --uid $USER_ID --gid $GROUP_ID $USER
WORKDIR /nfs/home/$USER 
EXPOSE 8888

# RUN chown -R $USER_ID:$GROUP_ID /nfs
# RUN chown -R 777 /opt/conda
# RUN chown -R $USER_ID:$GROUP_ID /opt/conda

COPY passwd /etc/passwd
COPY group /etc/group

RUN sudo usermod -aG sudo gzhang
RUN echo 'gzhang:gzdocker' | chpasswd

COPY requirements.txt .
#RUN docker init bash 
#RUN pip install -U -r requirements.txt
EXPOSE 8888
#ENTRYPOINT ["docker", "init", "bash"]
#ENTRYPOINT ["pip", "install", "-U", "-r", "requirements.txt"]



