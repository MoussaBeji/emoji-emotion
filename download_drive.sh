#!/bin/bash
fileId=1Uy-bR7uA4-BMVXiw30GqpiCX-U__c6-P
fileName=./data/archive.zip
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"  
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName} 
unzip './data/*.zip' -d ./data
#python train.py