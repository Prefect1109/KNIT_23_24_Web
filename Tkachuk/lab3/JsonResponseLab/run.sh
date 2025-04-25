#!/bin/bash
source ../../../lab_env/bin/activate
python manage.py migrate
python manage.py runserver 