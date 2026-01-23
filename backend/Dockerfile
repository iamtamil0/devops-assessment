# =========================
# Stage 1: Builder
# =========================
FROM python:3.12-slim
WORKDIR /app

COPY requirements.txt .
RUN pip install --prefix=/install -r requirements.txt


# =========================
# Stage 2: Runtime
# =========================
FROM python:3.12-slim
WORKDIR /app

# Create non-root user
RUN useradd -m appuser

# Create data folder for sqlite and given permissions
RUN mkdir -p /app/data && chown -R appuser:appuser /app

USER appuser

COPY --from=builder /install /usr/local
COPY . .

ENV DJANGO_SETTINGS_MODULE=config.settings
ENV DEBUG=False

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
