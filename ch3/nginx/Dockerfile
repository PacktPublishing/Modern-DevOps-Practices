FROM ubuntu:xenial
RUN apt update && apt install -y curl
RUN apt update && apt install -y nginx

WORKDIR /var/www/html/
ADD index.html ./

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

STOPSIGNAL SIGTERM
HEALTHCHECK --interval=60s --timeout=10s --start-period=20s --retries=3 CMD curl -f localhost
