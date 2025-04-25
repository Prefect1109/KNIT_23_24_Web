from django.shortcuts import render

def index(request):
    """Представлення для головної сторінки."""
    return render(request, 'index.html')

def about(request):
    """Представлення для сторінки 'Про нас'."""
    return render(request, 'about.html') 