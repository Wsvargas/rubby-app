# Dockerfile
FROM ruby:latest

# Copia el archivo Gemfile al contenedor
COPY Gemfile /app/

# Define el directorio de trabajo
WORKDIR /app

# Instala las dependencias del proyecto
RUN bundle install

# Copia el archivo de la aplicación después de instalar las dependencias
COPY app.rb /app/

# Exponer el puerto 4567 para acceder al servidor
EXPOSE 4567

# Ejecutar la aplicación
CMD ["ruby", "app.rb"]
