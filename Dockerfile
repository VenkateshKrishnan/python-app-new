FROM alpine:latest

RUN apk add --no-cache py3-pip \
    && pip3 install --upgrade pip \
    && pip install tensorflow==2.4.0 \
    && pip install keras==2.4.3 numpy==1.19.3 pillow==7.0.0 scipy==1.4.1 h5py==2.10.0 matplotlib==3.3.2 opencv-python keras-resnet==0.2.0 \
    && pip install imageai --upgrade
    

WORKDIR /app
COPY . /app

# RUN pip3 --no-cache-dir install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python3"]
CMD ["FirstDetection.py"]
