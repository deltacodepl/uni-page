from rest_framework.generics import ListAPIView, CreateAPIView
from rest_framework import permissions

from .models import Inquiry
from .serializers import InquirySerializer


class InquiryListView(ListAPIView):
    permission_classes = (permissions.IsAdminUser,)
    queryset = Inquiry.objects.all()
    serializer_class = InquirySerializer
    pagination_class = None


# class InquiryList(ListCreateAPIView):
#     queryset = Inquiry.objects.all()
#     serializer_class = InquirySerializer


class CreateInquiryApiView(CreateAPIView):
    __doc__ = "API for getting inquiries from clients"
    permission_classes = (permissions.AllowAny,)
    serializer_class = InquirySerializer
    queryset = Inquiry.objects.all()
