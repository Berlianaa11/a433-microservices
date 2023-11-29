#Perintah untuk membuat docker image dengan nama karsajobs dan dengan tag latest
docker build -t docker.pkg.github.com/berlianaa11/karsajobs-app/karsajobs:latest .

#Perintah login ke Github Packages
docker login docker.pkg.github.com -u berlianaa11 -p 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

#Perintah untuk mengupload docker image ke Github Packages
docker push docker.pkg.github.com/berlianaa11/karsajobs-app/karsajobs:latest