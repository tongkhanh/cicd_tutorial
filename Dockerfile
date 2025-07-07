FROM ubuntu:latest
RUN apt update && apt install -y python3-pip
COPY . /flask_app
WORKDIR /flask_app
RUN pip3 install --break-system-packages -r requirements.txt
CMD ["python3", "flask_docker.py"]
