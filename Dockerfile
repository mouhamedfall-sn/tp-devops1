# Image officielle Node.js
FROM node:18

# Dossier de travail dans le container
WORKDIR /app

# Copier les fichiers du projet
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier tout le projet
COPY . .

# Exposer le port de l'application
EXPOSE 3000

# Commande de démarrage
CMD ["node", "index.js"]
