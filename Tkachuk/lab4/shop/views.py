from django.shortcuts import render

# Create your views here.

def products(request):
    items = [
        {"name": "Ноутбук", "price": 1500, "stock": 10},
        {"name": "Смартфон", "price": 800, "stock": 15},
        {"name": "Навушники", "price": 200, "stock": 50},
        {"name": "Планшет", "price": 600, "stock": 0},  # Товар, якого немає в наявності
    ]
    return render(request, "products.html", {"items": items})
