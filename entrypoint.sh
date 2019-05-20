#!/bin/sh

set -e

sbt clean compile assembly

python -m awscli s3 cp target/scala-2.11/ingestion.jar s3://${BUCKET_NAME}/
