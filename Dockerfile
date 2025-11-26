FROM node:20-alpine

# 1. Dossier de travail
WORKDIR /app

# 2. Copier les fichiers de dépendances
COPY package*.json ./

# 3. Installer les dépendances en mode production
RUN npm install --production

# 4. Copier le reste du code
COPY . .

# 5. Variable d'environnement générique
ENV NODE_ENV=production

# 6. Port exposé (adapte si dans ton code tu utilises autre chose que 3000)
EXPOSE 3000

# 7. Commande de démarrage dans le conteneur
CMD ["node", "./src/index.js"]
