#!/bin/bash
# Wait 8 seconds and then emit the public urls exposed via ngrok.
( sleep 8; curl localhost:4040/api/tunnels | jq '.tunnels[]| {name: .public_url}' ) &
envsubst < /tmp/nginx.template > /etc/nginx/nginx.conf
service nginx start && ngrok http --authtoken=${NGROK_AUTHTOKEN} -subdomain=${NGROK_SUBDOMAIN} $NGROK_PORT
