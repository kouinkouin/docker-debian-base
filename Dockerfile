FROM debian:buster-slim

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y apt-transport-https lsb-release ca-certificates wget gpg sudo && \
    apt-get clean && rm -r /var/lib/apt/lists/*

