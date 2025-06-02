FROM python:3.12-slim

# Configurações básicas
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Diretório de trabalho
WORKDIR /app

# Instala dependências
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia o restante do código
COPY . .

EXPOSE 8000

# Rodar migrações e staticfiles antes do gunicorn (opcional)
ENTRYPOINT ["sh", "-c", "python manage.py migrate && python manage.py collectstatic --noinput && exec gunicorn myproject.wsgi:application --bind 0.0.0.0:8000 --workers 3"]

# # Comando padrão: gunicorn
# CMD ["gunicorn", "myproject.wsgi:application", "--bind", "0.0.0.0:8000", "--workers", "3"]
