#!/bin/bash

# 1. Активуємо віртуальне середовище
source venv/bin/activate

# 2. Застосовуємо міграції
python manage.py migrate

# 3. Запускаємо проєкт
python manage.py runserver 