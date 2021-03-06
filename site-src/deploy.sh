#!/bin/bash

set -e

# Limpando a versão anterior
rm -rf ../favicon.ico  
rm -rf ../index.build.js  
rm -rf ../index.html  
rm -rf ../manifest.json  
rm -rf ../robots.txt  
rm -rf ../sw-import.js  
rm -rf ../bower_components  
rm -rf ../elements  
rm -rf ../images  
rm -rf ../scripts  
rm -rf ../styles  
rm -rf ../sw-toolbox  

# Copiando a versão atual.
cp dist/favicon.ico ../
cp dist/index.build.js ../
cp dist/index.html ../
cp dist/manifest.json ../
cp dist/robots.txt ../
cp dist/sw-import.js ../
cd ..
cp -R site-src/dist/bower_components bower_components
cp -R site-src/dist/elements elements
cp -R site-src/dist/images images
cp -R site-src/dist/scripts scripts
cp -R site-src/dist/styles styles
cp -R site-src/dist/sw-toolbox sw-toolbox
