from django.shortcuts import render
from django.http import JsonResponse

# Create your views here.

def user_list(request):
    users = [
        {"name": "Іван", "age": 25},
        {"name": "Марія", "age": 30}
    ]
    return JsonResponse(users, safe=False)

def user_detail(request, name):
    if name == "Іван":
        user = {
            "name": "Іван",
            "age": 25,
            "orders": ["Ноутбук", "Смартфон"]
        }
    else:
        user = {
            "name": name,
            "age": 30,
            "orders": ["Книга", "Навушники"]
        }
    return JsonResponse(user)
