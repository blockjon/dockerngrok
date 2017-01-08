# dockerngrok
A Docker image desgined easily port tunnel traffic into a Docker container using ngrok

Just set the environment value for "PROXY_TO_ADDR" to whatever you want. It defaults to "https://www.google.com".

All env variables:

 - PROXY_TO_ADDR - The absolute HTTP address to proxy to.
 - NGROK_AUTHTOKEN - The ngrok auth token for a paid account.
 - ENV NGROK_SUBDOMAIN - The ngrok subdomain you'd like to use on a paid ngrok account.
