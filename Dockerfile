# Usa una imagen base ligera de Python
FROM python:3.10-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar todos los archivos del proyecto al contenedor
COPY . .

# Instalar dependencias (si existe requirements.txt)
RUN pip install --no-cache-dir -r requirements.txt || echo "No requirements.txt found"

# Comando para ejecutar la aplicación
CMD ["python", "app/main.py"]

