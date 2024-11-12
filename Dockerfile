# Usa la imagen base de Ruby
FROM ruby:latest

# Copia el archivo de la aplicación al contenedor
COPY app.rb /app/

# Define el directorio de trabajo
WORKDIR /app

# Exponer el puerto (puedes cambiarlo según el puerto de tu aplicación)
EXPOSE 8080

# Ejecuta la aplicación Ruby
CMD ["ruby", "app.rb"]
