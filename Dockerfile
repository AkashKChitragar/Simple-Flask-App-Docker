# Use official Python runtime as a parent image
FROM python:3.10-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Expose the port your Flask app runs on
EXPOSE 5070

CMD ["python", "product_list_app.py"]
