from rest_framework import serializers
from .models import Inquiry
from django.db import transaction


class InquirySerializer(serializers.ModelSerializer):
    def validate(self, data, *args, **kwargs):
        return super().validate(data, *args, **kwargs)

    @transaction.atomic()
    def create(self, validated_data):
        return super().create(validated_data)

    class Meta:
        model = Inquiry
        fields = '__all__'
