# Usa una imagen base de Ruby
FROM ruby:latest

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de la aplicación
COPY app.rb /app/

# Instala las dependencias necesarias
RUN gem install sinatra
RUN gem install rack

# Expone el puerto que utilizará la aplicación
EXPOSE 4567

# Comando para ejecutar la aplicación con rackup
CMD ["rackup", "--host", "0.0.0.0"]
