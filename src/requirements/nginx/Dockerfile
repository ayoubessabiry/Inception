FROM debian:buster-slim

RUN apt-get update && apt-get install -y nginx=1.14.2-2+deb10u5

RUN apt-get install -y openssl=1.1.1n-0+deb10u4

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/certs/cert.key -out /etc/ssl/certs/cert.crt -subj "/C=MO/L=BG/O=1337/OU=student/CN=[aessabir.1337.ma]" 

COPY nginx.conf	/etc/nginx/sites-available/default

EXPOSE 443

CMD ["nginx","-g", "daemon off;"]