#!/bin/bash

# Packages the contents of the theme into a .zip archive that can be uploaded to ghost.
# This script dumps the .zip into the user's home directory.

AWS_ENDPOINT=https://objects-us-east-1.dream.io
S3_BUCKET_NAME=kanadachi-themes
BUCKET_URL=http://kanadachi-themes.objects-us-east-1.dream.io
PACKAGE_JSON=package.json
DIST_DIRECTORY=dist

# This script depends on aws CLI being configured.
# if [[ ! command -v aws ]]; then
#   echo "This script depends on AWS CLI. Please configure it first."
#   exit 1;
# fi

# This script should be run from the project root.
if [[ ! -f "$PACKAGE_JSON" ]]; then
  echo "Are you running this from the project root? Package.json missing."
  exit 1;
fi

# Check if dist/ directory exists.
if [[ ! -d "$DIST_DIRECTORY" ]]; then
  mkdir "$DIST_DIRECTORY"
fi

# Build dependencies
yarn css:build

# Generate filename
VERSION=$(node ./scripts/getVersion.js)
ZIP_FILENAME=ghost-minimalist-"$VERSION".zip

# Zip and upload.
zip -r "$DIST_DIRECTORY"/"$ZIP_FILENAME" \
  assets \
  partials \
  *.hbs \
  package.json
aws --endpoint-url "$AWS_ENDPOINT" s3 cp "$DIST_DIRECTORY"/"$ZIP_FILENAME" s3://"$S3_BUCKET_NAME"/"$ZIP_FILENAME"
aws --endpoint-url "$AWS_ENDPOINT" s3api put-object-acl --bucket "$S3_BUCKET_NAME" --key "$ZIP_FILENAME" --acl public-read
echo "Success building theme. Uploaded to $BUCKET_URL/$ZIP_FILENAME."
