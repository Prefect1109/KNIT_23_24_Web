from django.urls import path
from . import views

urlpatterns = [
    path('', views.course_list, name='course_list'),
    path('<str:course_name>/', views.course_detail, name='course_detail'),
    path('<str:course_name>/modules/', views.module_list, name='module_list'),
    path('<str:course_name>/modules/<int:module_id>/', views.module_detail, name='module_detail'),
] 