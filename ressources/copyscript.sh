#!/bin/bash

## This script is called to copy all ressources
## Destination is basicly the output/ module
## The output module is the document-root of what is served on deployment

mkdir -p output/img
mkdir -p output/img/impressionen
mkdir -p output/fonts
mkdir -p output/audio
mkdir -p output/video

## app files
cp sources/ressources/fonts/* output/fonts/
cp sources/ressources/img/* output/img/
cp sources/ressources/audio/* output/audio/
cp sources/ressources/video/* output/video/
cp sources/ressources/img/impressionen/* output/img/impressionen/

cp sources/ressources/Datenschutzerklärung-HerzmitSeele.pdf output/Datenschutzerklärung-HerzmitSeele.pdf
cp sources/ressources/Widerrufsbelehrung-HerzmitSeele.pdf output/Widerrufsbelehrung-HerzmitSeele.pdf
cp sources/ressources/AAB-HerzmitSeele.pdf output/AAB-HerzmitSeele.pdf
cp sources/ressources/favicons/* output/
cp sources/ressources/manifests/* output/

echo 0
