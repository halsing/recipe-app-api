FROM python:3.7-alpine
MAINTAINER Adrian Borowski

ENV PYTHONUNBUFFORED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN aduser -D user
USER user