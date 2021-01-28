FROM alpine:latest
WORKDIR /app
RUN apk add --no-cache python3 py3-pip firefox-esr dbus-x11 ttf-freefont xvfb curl unzip\
		&& curl -s https://api.github.com/repos/mozilla/geckodriver/releases/latest \
                | grep "browser_download_url.*linux64.tar.gz" \
                | cut -d : -f 2,3 \
                | xargs wget \
		&& tar -zxvf *.tar.gz\
		&& mv ./geckodriver /usr/local/bin/\
		&& chmod a+x /usr/local/bin/geckodriver\
		&& pip3 install selenium requests xvfbwrapper
