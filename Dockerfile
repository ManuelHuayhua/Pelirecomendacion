# Usa una imagen base de Python
FROM python:3.8

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el contenido del directorio local al contenedor
COPY . .

# Copia los archivos CSV al directorio de trabajo en el contenedor
COPY movies.csv .
COPY ratings.csv .

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto en el que se ejecutará la aplicación
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]
