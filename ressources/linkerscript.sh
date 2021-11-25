#!/bin/bash

## This script is called to link all ressources for testing
## testing/document-root shall have all ressources available as if it was the real document-root on deployment

pushd testing/document-root

ln -sfT ../../sources/ressources/fonts fonts
ln -sfT ../../sources/ressources/img img
ln -sfT ../../sources/ressources/audio audio
ln -sfT ../../sources/ressources/video video

ln -sf ../../sources/ressources/Datenschutzerklärung-HerzmitSeele.pdf .
ln -sf ../../sources/ressources/AAB-HerzmitSeele.pdf .
ln -sf ../../sources/ressources/Widerrufsbelehrung-HerzmitSeele.pdf .

ln -sf ../../sources/ressources/manifests/* .
ln -sf ../../sources/ressources/favicons/* .

popd

echo 0
