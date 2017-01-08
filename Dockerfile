FROM debian:jessie

RUN apt-get update

RUN apt-get install -y \
    curl \
    gettext \
    jq \
    unzip

RUN curl -O https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
RUN unzip ngrok-stable-linux-amd64.zip
RUN mv ngrok /usr/local/bin/
RUN rm ngrok-stable-linux-amd64.zip
ENV NGROK_PORT=80
ENV NGROK_AUTHTOKEN ""
ENV NGROK_SUBDOMAIN ""
ENV PROXY_TO_ADDR=https://www.google.com/
RUN apt-get install -y nginx
COPY nginx.template /tmp/nginx.template
copy run.sh /run.sh
CMD ["/run.sh"]
