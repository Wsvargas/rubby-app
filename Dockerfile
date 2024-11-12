# Usa la imagen base de Ruby
FROM ruby:latest

# Instala Sinatra
RUN gem install sinatra

# Copia la aplicación Ruby al contenedor
COPY app.rb /app/

# Define el directorio de trabajo
WORKDIR /app

# Exponer el puerto (puedes cambiarlo según el puerto de tu aplicación)
EXPOSE 4567

# Ejecuta la aplicación Ruby
CMD ["ruby", "app.rb"]
