FROM python:3.7-slim-buster

WORKDIR /app
COPY . /app

RUN apt update -y && \
    apt install -y awscli build-essential cmake ninja-build python3-dev

COPY requirements.txt ./
RUN pip install --upgrade pip setuptools wheel && \
    pip install -r requirements.txt

CMD ["python3", "app.py"]
