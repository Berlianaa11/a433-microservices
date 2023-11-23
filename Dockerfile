#Menggunakan base image node.js dengan versi 14.21.2
FROM node:14.21.2-alpine
#Menentukan working directory di container sebagai "/app"
WORKDIR /app
#Menyalin seluruh source code ke working directory "/app" di container
COPY . /app
#Menentukan agar aplikasi berjalan dalam production mode dan menggunakan container bernama item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db
#Perintah untuk Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build
#Menyatakan bahwa aplikasi berjalan pada port 8080
EXPOSE 8080
#Perintah ketika container diluncurkan, jalankan server dengan perintah npm start
CMD ["npm", "start"]
