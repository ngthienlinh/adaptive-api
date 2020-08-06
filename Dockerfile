FROM python:3.4-slim

RUN apt-get update
RUN apt-get install -y pkg-config
RUN apt-get install -y libfreetype6-dev
RUN apt-get install -y libpng-dev
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

WORKDIR /app

CMD [ "python", "./run.py" ]
