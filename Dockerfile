# Usa un server web leggerissimo (Nginx)
FROM nginx:alpine

# Copia i file del gioco nella cartella del server
COPY ./src /usr/share/nginx/html

# Espone la porta 8080 (quella standard di Cloud Run)
EXPOSE 8080

# Configura Nginx per ascoltare sulla 8080
RUN sed -i 's/listen       80;/listen       8080;/g' /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
