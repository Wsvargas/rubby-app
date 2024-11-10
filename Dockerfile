# Usamos una imagen oficial de Ruby
FROM ruby:3.1-slim

# Establecer directorio de trabajo
WORKDIR /app

# Copiar el código fuente al contenedor
COPY app.rb .

# Comando para ejecutar el programa
CMD ["ruby", "app.rb"]
