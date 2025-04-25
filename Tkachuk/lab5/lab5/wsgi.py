"""
WSGI config for lab5 project.
"""

import os

from django.core.wsgi import get_wsgi_application

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'lab5.settings')

application = get_wsgi_application() 