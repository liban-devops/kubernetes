# Utiliser l'image Nginx basée sur Alpine
FROM nginx:alpine

# Supprimer les fichiers par défaut de Nginx
RUN rm -rf /usr/share/nginx/html/edd

# Supprimer les fichiers par défaut de Nginx
RUN mkdir /usr/share/nginx/html/edd

# Copier vos fichiers HTML dans le répertoire de Nginx
COPY . /usr/share/nginx/html/edd

# Exposer le port 80
EXPOSE 80

# Commande pour démarrer Nginx
CMD ["nginx", "-g", "daemon off;"]