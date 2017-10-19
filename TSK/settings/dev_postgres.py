from TSK.settings.base import *

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgres_psycopg2',
        'NAME': os.getenv('TSK_DB_NAME'),
        'USER': os.getenv('TSK_DB_USER'),
        'PASSWORD': os.getenv('TSK_DB_PASSWORD'),
        'HOST': os.getenv('TSK_DB_HOST'),
        'PORT': os.getenv('TSK_DB_PORT'),
    }
}