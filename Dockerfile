FROM python:3.9

WORKDIR /app

COPY main.py .

RUN pip install psycopg2-binary

CMD ["python", "main.py"]