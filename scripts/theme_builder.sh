#!/bin/bash

# Packages the contents of the theme into a .zip archive that can be uploaded to ghost.
# This script dumps the .zip into the user's home directory.

# This script should be run from the project root.
PACKAGE_JSON=package.json
if [[ ! -f "$PACKAGE_JSON" ]]; then
  echo "Are you running this from the project root? Package.json missing."
  exit 1;
fi

# Check if dist/ directory exists.
DIST=dist
if [[ ! -d "$DIST" ]]; then
  mkdir dist
fi

# build dependencies
yarn css:build

# Get version of theme
VERSION=$(node ./scripts/getVersion.js)

zip -r dist/ghost-minimalist-"$VERSION".zip \
  assets \
  partials \
  *.hbs \
  package.json

