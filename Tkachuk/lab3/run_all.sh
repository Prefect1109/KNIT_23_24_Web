#!/bin/bash
source ../../lab_env/bin/activate

# Запуск UserProfileLab на порту 8000
cd UserProfileLab
python manage.py migrate
python manage.py runserver 8000 > ../userprofile.log 2>&1 &
USER_PID=$!
echo "UserProfileLab запущено на порту 8000, PID: $USER_PID"
cd ..

# Запуск ShopLab на порту 8001
cd ShopLab
python manage.py migrate
python manage.py runserver 8001 > ../shop.log 2>&1 &
SHOP_PID=$!
echo "ShopLab запущено на порту 8001, PID: $SHOP_PID"
cd ..

# Запуск JsonResponseLab на порту 8002
cd JsonResponseLab
python manage.py migrate
python manage.py runserver 8002 > ../json.log 2>&1 &
JSON_PID=$!
echo "JsonResponseLab запущено на порту 8002, PID: $JSON_PID"
cd ..

# Запуск CourseLab на порту 8003
cd CourseLab
python manage.py migrate
python manage.py runserver 8003 > ../course.log 2>&1 &
COURSE_PID=$!
echo "CourseLab запущено на порту 8003, PID: $COURSE_PID"
cd ..

echo "Всі проекти запущено. Для зупинки всіх серверів натисніть Ctrl+C"
echo "Логи сервера можна переглянути у файлах *.log"

# Функція для зупинки всіх процесів при натисканні Ctrl+C
function cleanup {
  echo "Зупиняю всі сервери..."
  kill $USER_PID $SHOP_PID $JSON_PID $COURSE_PID
  exit 0
}

# Встановлюємо обробник сигналу для Ctrl+C
trap cleanup INT

# Чекаємо на введення користувача
wait 