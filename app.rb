require 'sinatra'

# Ruta principal que devuelve un mensaje
get '/' do
  "Hello, World from Ruby Sinatra! <br> Name: Willian Vargas"
end

# Inicia el servidor en el puerto 4567 (puedes cambiarlo si es necesario)
set :port, 4567
