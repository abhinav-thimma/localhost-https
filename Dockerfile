# Use an official Python runtime as a parent image
FROM python:3.13-slim

WORKDIR /app

COPY pyproject.toml uv.lock* /app/
RUN pip install uv
RUN uv pip install --system -r pyproject.toml

COPY main.py .
COPY certs ./certs

EXPOSE 8080

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080", "--ssl-keyfile", "./certs/localhost.key", "--ssl-certfile", "./certs/localhost.crt"]