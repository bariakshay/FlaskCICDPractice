FROM python:3.9.0
#FROM python:3.7.0
RUN apt-get update -y
WORKDIR /app
ADD requirements.txt /app/requirements.txt
#RUN pip install --upgrade pip
RUN pip install -r /app/requirements.txt
#RUN apt-get install --only-upgrade libwebp6 -y
#RUN apt-get install --only-upgrade openssh-client -y
#ENV SWAGGER_JSON "/static/openapi.json"
#ENV BASE_URL "https://qinsight-dev.myqone.com/restservice"
#ENV SWAGGER_JSON_URL "/swagger"
ADD . /app
#ENV PORT 8080
CMD ["python", "app.py"]