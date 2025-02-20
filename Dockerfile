# Utiliser une image de base Nginx
FROM nginx:latest

# Définir le répertoire de travail
WORKDIR /usr/share/nginx/html

# Supprimer les fichiers existants de Nginx pour éviter les conflits
RUN rm -rf ./*

# Copier les fichiers de ton application vers le conteneur
COPY . .

# Exposer le port 80
EXPOSE 80

# Lancer Nginx
CMD ["nginx", "-g", "daemon off;"]
