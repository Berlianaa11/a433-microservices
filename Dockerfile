#Perintah untuk menggunakan base image node dengan versi 14.21.2
FROM node:14.21.2-alpine as builder
#Menetapkan Working Driectory sebagai /app
WORKDIR /app
#Perintah untuk mengcopy paket json ke working directory
COPY package*.json ./
#Perintah untuk memasang dependencies
RUN npm install
#Perintah untuk menyalin semua berkas ke Working Directory
COPY . .
#Menetapkan bahwa port yang digunakan adalah port 3000
EXPOSE 3000
#Menetapkan container dijalankan dengan script run
CMD [ "node", "index.js" ]