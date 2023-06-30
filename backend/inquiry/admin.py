from django.contrib import admin
from .models import Inquiry


class InquiryAdmin(admin.ModelAdmin):
    list_display = ('id', 'first_name', 'last_name', 'email')
    list_display_links = ('id', 'email')
    search_fields = ('last_name', 'email')
    list_per_page = 20


admin.site.register(Inquiry, InquiryAdmin)
