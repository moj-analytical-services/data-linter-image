FROM python:3.7-slim

WORKDIR /etl

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

ENV PYTHONPATH "${PYTHONPATH}:/etl"