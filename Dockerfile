# FROM nginx:alpine
FROM nginx
WORKDIR /static-web
EXPOSE 80
COPY . .
COPY .  /usr/share/nginx/html
#CMD [ "--help" ]
