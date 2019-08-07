FROM python:3.7-slim

WORKDIR /etl

RUN apt-get -qq update &&\
    apt-get -y install git

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

RUN apt-get -y remove --purge git

ENV PYTHONPATH "${PYTHONPATH}:/etl"