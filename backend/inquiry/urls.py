from django.urls import path
from .views import InquiryListView, CreateInquiryApiView

urlpatterns = [
  path('add/', CreateInquiryApiView.as_view(), name='create-inquiry'),
  path('', InquiryListView.as_view()),
]
