#!/bin/sh

set -e

CWD=$(pwd)
echo $CWD
touch testfile.txt

python -m awscli s3 cp testfile.txt s3://${BUCKET_NAME}/

#sbt clean compile assembly
