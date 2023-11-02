
# Build stage
FROM python:3.9-alpine

WORKDIR /app

COPY requirements.txt .
COPY . /app

# Install dependencies

RUN pip install --no-cache-dir -r requirements.txt


EXPOSE 5000

ENV NAME World

CMD ["python3", "app.py"]




