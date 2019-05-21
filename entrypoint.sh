#!/bin/sh

set -e

sbt clean compile assembly

# Extract release version from build.sbt
releaseVersion="$(grep "^val releaseVersion = \".\..\...\"" ./build.sbt | grep "\".*\"" -o | sed "s/\"//g")"

# Upload jar to bucket
python -m awscli s3 cp target/scala-2.11/ingestion.jar s3://${BUCKET_NAME}/share/lib/$(releaseVersion)/
