# syntax=docker/dockerfile:1
FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
COPY ./app /app
WORKDIR /app

COPY requirements.txt requirements.dev.txt /tmp/

ARG DEV=false

RUN pip install --upgrade pip && \
    pip install -r /tmp/requirements.txt && \
    if [ $DEV = "true" ]; \
      then \
      pip install -r /tmp/requirements.dev.txt; \
    fi 
