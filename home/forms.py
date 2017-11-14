from django import forms

class ContactForm(forms.Form):
    contact_name = forms.CharField(max_length=30)
    contact_email = forms.CharField(max_length=50)
    contact_phone = forms.CharField(max_length=10)
    contact_zone = forms.CharField(max_length=40)
    contact_comment = forms.CharField(max_length=50)