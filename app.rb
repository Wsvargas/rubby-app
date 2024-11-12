# app.rb
require 'webrick'

# Crea el servidor HTTP
server = WEBrick::HTTPServer.new :Port => 4567

# Define una ruta para la raíz "/"
server.mount_proc '/' do |req, res|
  res.content_type = 'text/html'
  res.body = "<h1>Hello from Ruby HTTP Server!</h1>"
end

# Inicia el servidor
trap('INT') { server.shutdown }
server.start
