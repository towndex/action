#!/bin/bash

echo "Data paths: ${INPUT_DATA_PATHS}"
echo "Next base path: ${INPUT_NEXT_BASE_PATH}"
SITE_DIRECTORY_PATH=$(realpath $INPUT_SITE_DIRECTORY_PATH)
echo "Site directory path: ${INPUT_SITE_DIRECTORY_PATH}"

cd /sdapps/apps/towndex-gui
npm run build
cp -p -R .next/server/app $SITE_DIRECTORY_PATH
