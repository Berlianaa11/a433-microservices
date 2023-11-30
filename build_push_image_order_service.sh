#Perintah untuk membuat docker image dengan nama order-service dan dengan tag latest
docker build -t docker.pkg.github.com/berlianaa11/e-commerce-app/order-service:latest .

#Perintah login ke Github Packages
docker login docker.pkg.github.com -u berlianaa11 -p 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

#Perintah untuk mengupload docker image ke Github Packages
docker push docker.pkg.github.com/berlianaa11/e-commerce-app/order-service:latest