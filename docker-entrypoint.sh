#!/bin/bash

DJANGO_SRVPROJ="/srv/myproject_site"

cd $DJANGO_SRVPROJ

/bin/bash
pip install -r $DJANGO_SRVPROJ/requirements.txt
python $DJANGO_SRVPROJ/manage.py migrate                  # Apply database migrations
python $DJANGO_SRVPROJ/manage.py collectstatic --noinput  # Collect static files
echo $PWD
#python $DJANGO_SRVPROJ/manage.py compilemessages          # Compile po files

python $DJANGO_SRVPROJ/manage.py runserver 0.0.0.0:8000
