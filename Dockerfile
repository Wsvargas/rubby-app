# Usa la imagen base de Ruby
FROM ruby:latest

# Instala las dependencias necesarias, incluyendo bundler
RUN gem install bundler

# Copia el Gemfile al contenedor
COPY Gemfile /app/
COPY Gemfile.lock /app/

# Define el directorio de trabajo
WORKDIR /app

# Instala las gemas
RUN bundle install

# Copia la aplicación Ruby al contenedor
COPY app.rb /app/

# Exponer el puerto (puedes cambiarlo según el puerto de tu aplicación)
EXPOSE 4567

# Ejecuta la aplicación Ruby
CMD ["ruby", "app.rb"]
