#!/bin/bash

#membangun docker image
docker build -t item-app:v1 .
#melihat daftar image
docker images
#mengubah nama image agar sesuai dengan github packages
docker tag item-app:v1 ghcr.io/zackmvp/item-app-dicodingzack/item-app:v1
#Login ke github packages melalui path PAT_GITHUB
echo $PAT_GITHUB | docker login ghcr.io -u zackmvp --password-stdin
#Mengunggah image ke github packages
docker push ghcr.io/zackmvp/item-app-dicodingzack/item-app:v1
