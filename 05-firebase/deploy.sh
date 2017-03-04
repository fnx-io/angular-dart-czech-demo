#!/bin/sh
pub build &&
cd build/web &&
gcloud --project ma-web compute copy-files * static-ma:/usr/share/nginx/www/demo.fnx.io/rpg-manager --zone europe-west1-b;
