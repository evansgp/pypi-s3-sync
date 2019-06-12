#!/usr/bin/env bash

pypi-mirror -d downloads download -bkr requirements.txt
pypi-mirror -d downloads create -m simple

aws s3 sync simple s3://$MIRROR_BUCKET_NAME --delete
