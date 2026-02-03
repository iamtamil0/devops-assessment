# ---- Stage 1: Builder ----
FROM python:3.12-slim AS builder

WORKDIR /app

# Install build dependencies
RUN apt-get update && apt-get install -y gcc

COPY requirements.txt .
RUN pip install --prefix=/install -r requirements.txt


# ---- Stage 2: Runtime ----
FROM python:3.12-slim

WORKDIR /app

# Create non-root user
RUN useradd -m appuser
USER appuser

COPY --from=builder /install /usr/local
COPY . .

ENV DJANGO_SETTINGS_MODULE=backend.settings
ENV DEBUG=False

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
