# Image yang digunakan
FROM node:16-alpine

# Working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install --development

# Copy the app
COPY app.js .

# Menjalankan aplikasi
CMD ["npm", "start"]
