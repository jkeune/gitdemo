#!/bin/bash

# this script converts any string to SHA1
# usage: ./convert2sha1.sh hello

echo "THIS IS A SHA1 ENCRYPTER!"
echo "USAGE: ./convert2sha1.sh <text>"
input=$1
echo "Encrypting $input to SHA-1..."
echo -n $input | sha1sum | awk '{print $1}'
