FROM nginx:latest

RUN mkdir -p /usr/share/nginx/logs

COPY nginx.conf /etc/nginx/conf.d/default.conf 
COPY nginx_main.conf /usr/share/nginx/html/nginx_main.conf
COPY index.html /usr/share/nginx/html/index.html
COPY linux.png /usr/share/nginx/html/linux.png

EXPOSE 80 443 8080

CMD ["nginx","-p", "/usr/share/nginx","-c","/usr/share/nginx/html/nginx_main.conf", "-g", "daemon off;"]
