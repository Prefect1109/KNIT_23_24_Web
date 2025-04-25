#!/bin/bash

# Активація віртуального середовища
source ../../lab_env/bin/activate

# Застосувати міграції
python manage.py migrate

# Запустити сервер
python manage.py runserver 