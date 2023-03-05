FROM alpine:latest
WORKDIR /app
RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
	&& apk update\
	&& apk add --no-cache python3 py3-pip firefox dbus-x11 ttf-freefont curl unzip py3-zstandard geckodriver\
	&& pip3 install selenium requests selenium-requests selenium-wire
