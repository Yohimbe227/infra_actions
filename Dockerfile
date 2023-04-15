FROM python:3.7-slim
COPY ./ /app
RUN pip install -r /app/requirements.txt --no-cache-dir
WORKDIR /app/infra_project/
CMD python manage.py runserver 0:5000
