FROM ubuntu:18.04
RUN apt update &&\
    apt install python-all python-pip -y
ADD requirements.txt /tmp/
RUN pip install -qr /tmp/requirements.txt
ADD app.py /opt/webapp
WORKDIR /opt/webapp
EXPOSE 5000
CMD ["python", "app.py"]