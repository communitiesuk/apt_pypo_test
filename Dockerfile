# syntax=docker/dockerfile:1
FROM debian:latest

RUN apt-get update && apt-get install -y pipx emacs git
RUN useradd --create-home --shell /bin/bash dev

USER dev
WORKDIR /home/dev
RUN pipx ensurepath
RUN pipx install poetry
ENV PATH=$PATH:/home/dev/.local/bin
