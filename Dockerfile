FROM python:3.11-rc-alpine3.15
MAINTAINER Oleg Korolev https://github.com/hustonCun
ENV PYTHONUNBUFFED 1

COPY ./requirements.txt /requirements.txt
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
