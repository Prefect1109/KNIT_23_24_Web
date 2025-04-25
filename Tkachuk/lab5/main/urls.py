from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),  # URL для головної сторінки
    path('about/', views.about, name='about'),  # URL для сторінки "Про нас"
] 