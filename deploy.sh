#!/bin/sh

bundle exec middleman build --clean

aws s3 cp build s3://venga-dine-api-docs/ --cache-control "max-age=0" --exclude "*" --include "*.html" --recursive
aws s3 cp build s3://venga-dine-api-docs/ --cache-control "max-age=172800" --exclude "*.html" --recursive
