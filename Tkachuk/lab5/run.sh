#!/bin/bash

# 1. Активуємо віртуальне середовище
source ../../lab_env/bin/activate

# 2. Застосовуємо міграції
python3 manage.py makemigrations
python3 manage.py migrate

# 3. Запускаємо сервер
python3 manage.py runserver 