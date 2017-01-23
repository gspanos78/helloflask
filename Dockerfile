FROM ubuntu:latest
MAINTAINER Georgios Spanos "hypnosys@outlook.com"
RUN apt-get update -y
RUN apt install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]

