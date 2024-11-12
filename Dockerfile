# Usa una imagen base de Ruby
FROM ruby:latest

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo app.rb al contenedor
COPY app.rb /app/

# Instala Sinatra
RUN gem install sinatra

# Expone el puerto que usarás
EXPOSE 4567

# Comando para ejecutar la aplicación
CMD ["ruby", "app.rb"]
