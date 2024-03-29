#!/bin/bash

apt install figlet

figlet -l "Leaf Disease Detection"

echo "Building Docker Image..."

docker build -t leaf-disease-detection /root/leaf_disease_detection


echo "Spinning up Docker Container..."

docker run -d -p 80:5000 --name server1 leaf-disease-detection
