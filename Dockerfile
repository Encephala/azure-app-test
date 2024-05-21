FROM python:3.12-alpine3.19

WORKDIR /src

COPY app.py requirements.txt ./

RUN pip install -r requirements.txt

EXPOSE 8000

CMD [ "gunicorn", "--bind=0.0.0.0", "--timeout", "600", "app:app" ]
