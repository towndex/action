#!/bin/bash

echo "Data paths: ${INPUT_DATA_PATHS}"
echo "Next base path: ${INPUT_NEXT_BASE_PATH}"
SITE_DIRECTORY_PATH=$(realpath $INPUT_SITE_DIRECTORY_PATH)
echo "Site directory path: ${INPUT_SITE_DIRECTORY_PATH}"
echo "Site title: ${INPUT_SITE_TITLE}"

cd /sdapps/apps/towndex-gui
npm run build
cp -p -R out/ $SITE_DIRECTORY_PATH
