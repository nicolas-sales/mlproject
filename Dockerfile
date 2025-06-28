from python:3.7-slim-buster
WORKDIR /app
COPY . /app

RUN apt update -y && \
    apt install -y awscli build-essential cmake ninja-build python3-dev


RUN pip install -r requirements.txt
CMD ["python3", "app.py"]