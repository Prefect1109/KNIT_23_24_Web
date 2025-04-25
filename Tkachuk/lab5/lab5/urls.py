"""
URL configuration for lab5 project.
"""
from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('main.urls')),  # Підключаємо URL-адреси з застосунку main
] 