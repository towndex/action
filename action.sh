#!/bin/bash

SITE_DIRECTORY_PATH=realpath $INPUT_SITE_DIRECTORY_PATH

cd /sdapps/apps/towndex-gui
npm run build
cp -p -R .next/server/app $SITE_DIRECTORY_PATH
