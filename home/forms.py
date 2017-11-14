from django import forms



class ContactForm(forms.Form):
    contact_name = forms.charfied( max_length=30 )
    contact_email = forms.charfied(max_length=50 )
    contact_phone = forms.numberfield(max_length=10)
    contact_zone = forms.charfied(max_length=40)
    contact_comment = forms.charfied(max_length=50 )