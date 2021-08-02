FROM python:3.9.6

ENV PYTHONUNBUFFERED=1
ENV PYTHONPATH=/code/src

RUN apt-get update && \
    apt-get install -y locales && \
    sed -i -e 's/# pt_BR.UTF-8 UTF-8/pt_BR.UTF-8 UTF-8/' /etc/locale.gen && \
    dpkg-reconfigure --frontend=noninteractive locales

ENV LANG pt_BR.UTF-8
ENV LC_ALL pt_BR.UTF-8

WORKDIR /code

RUN pip install poetry

COPY pyproject.toml /code/

RUN poetry install
COPY . /code/
