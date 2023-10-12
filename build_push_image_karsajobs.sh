#!/bin/bash
# Build docker image
docker build -t ghcr.io/asmarajayadotid/karsajobs:latest .
# Login ke GitHub Packages
echo $PASSWORD_GHCR | docker login -u asmarajayadotid --password-stdin ghcr.io
# Mengunggah image ke GitHub Packages
docker push ghcr.io/asmarajayadotid/karsajobs:latest