FROM ubuntu:18.04
FROM python:3

WORKDIR /app

COPY . /app

RUN apt-get -y update && apt install -y xmlsec1
RUN pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 8000
RUN django-admin --version

CMD ["python", "manage.py","runserver","0.0.0.0:8000"]

