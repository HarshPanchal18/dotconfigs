FROM bash:4.4-alpine3.16
COPY . /script
WORKDIR /script
CMD bash 1.sh
