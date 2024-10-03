FROM python:3.9.6-slim

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /be

# Copiar el archivo de requerimientos y las dependencias
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY ./be .

EXPOSE 8000

CMD ["uvicorn", "api.main:app", "--host", "0.0.0.0", "--port", "8000"]
