from django.db import models
from django.utils.translation import gettext_lazy as _


class Product(models.TextChoices):
    LIDBOX = "L"
    BOOKBOX = "B"
    SAMPLEBOX = "S"


class Inquiry(models.Model):
    first_name = models.CharField(_("first name"), max_length=100)
    last_name = models.CharField(_("last name"), max_length=100)
    email = models.CharField(max_length=150)
    phone = models.CharField(max_length=20, blank=True, null=True)
    box_dimensions = models.CharField(max_length=150, blank=True, null=True)
    marketing = models.BooleanField(default=False)
    # product = models.CharField(max_length=10, choices=Product.choices, default=Product.LIDBOX)
    created_at = models.DateTimeField(auto_now_add=True)
    edited_at = models.DateTimeField(auto_now=True, null=True)

    class Meta:
        verbose_name = "Inquiry"
        verbose_name_plural = "Inquires"
        ordering = ["-created_at"]

    def get_full_name(self) -> str:
        return "{0} {1}".format(self.first_name, self.last_name).strip()

    def __str__(self) -> str:
        return str(self.email).strip()
