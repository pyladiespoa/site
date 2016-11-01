FROM python:3.4
RUN pip install django==1.8.5
COPY . /App
WORKDIR /App
CMD python manage.py migrate
CMD python manage.py runserver 0.0.0.0:8000