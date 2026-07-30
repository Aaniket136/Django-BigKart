#!/usr/bin/env bash

set -o errexit

pip install -r requirements.txt

mkdir -p staticfiles/media
cp -r media/. staticfiles/media/

python manage.py collectstatic --noinput

python manage.py migrate