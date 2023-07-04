from django.contrib import admin
from .models import About


class AboutAdmin(admin.ModelAdmin):
    list_display = ('id', 'title', 'icon')
    list_display_links = ('id', 'title')
    search_fields = ('title', )
    list_per_page = 20


admin.site.register(About, AboutAdmin)
