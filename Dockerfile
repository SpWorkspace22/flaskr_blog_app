FROM python:3-alpine

WORKDIR app

COPY requirement.txt requirement.txt

RUN pip install -r requirement.txt

COPY . .

EXPOSE 5000

# Initialize DB & Start App Server
CMD ["sh","-c","flask --app flaskr init-db && flask --app flaskr run --host=0.0.0.0"]