# Usar una imagen base oficial de Python 3.9
FROM python:3.9-slim

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar el archivo requirements.txt al contenedor
COPY requirements.txt .

# Instalar las dependencias listadas en requirements.txt
RUN pip install -r requirements.txt

# Copiar todo el código del proyecto al contenedor
COPY . .

# Exponer el puerto 5000 para que Flask funcione
EXPOSE 5000

# Comando para ejecutar la aplicación Flask
CMD ["python", "app.py"]
