#Digunakan untuk membuat Docker Image dengan nama item-app dan tag v1
docker build -t item-app:v1 .
#Digunakan untuk mengecek daftar Docker Image di lokal
docker images
#Digunakan untuk mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 berlianaa/item-app:v1
#Digunakan untuk login Docker Hub
docker login
#Digunakan untuk mengunggah Docker Image ke Docker Hub
docker push berlianaa/item-app:v1
