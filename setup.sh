#!/bin/sh

aws s3 mb s3://$S3_BUCKET_NAME
aws s3 cp ./images/ s3://$S3_BUCKET_NAME/images/01.png s3://$S3_BUCKET_NAME/images/02.png
