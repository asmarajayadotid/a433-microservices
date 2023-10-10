#!/bin/bash
# Build docker image
docker build -t item-app:v1 .
# Melihat daftar image
docker images
# Mengubah tag docker image
docker tag item-app:v1 ghcr.io/asmarajayadotid/item-app:v1
# Login ke GitHub Packages
echo $PASSWORD_GHCR | docker login -u asmarajayadotid --password-stdin ghcr.io
# Mengunggah image ke GitHub Packages
docker push ghcr.io/asmarajayadotid/item-app:v1