from django.urls import path
from django.views.decorators.csrf import csrf_exempt
from .views import AboutListView


urlpatterns = [
    path('', csrf_exempt(AboutListView.as_view())),
]
