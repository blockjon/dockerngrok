# dockerngrok
A Docker image desgined easily port tunnel traffic into a Docker container using ngrok

Just set the environment value for "PROXY_TO_ADDR" to whatever you want. It defaults to "https://www.google.com".

All env variables:

 - PROXY_TO_ADDR - The absolute HTTP address to proxy to.
 - NGROK_AUTHTOKEN - The ngrok auth token for a paid account.
 - ENV NGROK_SUBDOMAIN - The ngrok subdomain you'd like to use on a paid ngrok account.

 - X_FORWARDED_PROTO - 'http' or 'https' depending what your web server is listning on that we proxy to
 - PROXY_TO_ADDR - 'http://dockercontainername/' or similar. Your docker containers are addressable by their container name when run on the same network

docker run -ti -e 'X_FORWARDED_PROTO=http' -e 'PROXY_TO_ADDR=http://dockercontainername/' --network mynetwork jonthepirate/ngrok:latest

Be sure to specify which network that this ngrok container should run on.. it should be the same network as your web server that we proxy to.
