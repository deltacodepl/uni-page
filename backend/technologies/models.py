from django.db import models
# from .validators import validate_file_extension


class Technology(models.Model):
    name = models.CharField(max_length=100)
    image = models.ImageField(upload_to='images', null=True)
    rows = models.CharField(max_length=2, null=True)
    cols = models.CharField(max_length=2, null=True)

    class Meta:
        verbose_name = 'Technology'
        verbose_name_plural = 'Technologies'
        ordering = ['id']

    def __str__(self):
        return self.name
