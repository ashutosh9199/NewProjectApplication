FROM nginx:latest
RUN apt-get update -y
RUN apt-get install nginx -y
WORKDAY /usr/share/nginx/html
COPY /usr/share/nginx/html/
EXPOSE 76
ENTRYPOINT ["nginx", "-g", "daemon off;"]
