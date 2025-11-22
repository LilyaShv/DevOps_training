FROM python:3.11-slim

WORKDIR /DevOps_training

RUN pip install flask

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]