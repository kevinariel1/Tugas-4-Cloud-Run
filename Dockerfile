# Image yang digunakan
FROM node:16-alpine

# Working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install --production

# Copy the app
COPY app-prod.js .

# Menjalankan aplikasi
CMD ["npm", "start"]
