FROM nginx:alpine

# Копируем статику
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY img/ /usr/share/nginx/html/img/

# Копируем конфиг Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
