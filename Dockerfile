# Usa una imagen base de Ruby
FROM ruby:latest

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Instala webrick
RUN gem install webrick

# Copia el archivo de la aplicación
COPY app.rb /app/

# Expone el puerto que utilizará la aplicación
EXPOSE 4567

# Comando para ejecutar el servidor básico
CMD ["ruby", "app.rb"]
