require 'sinatra'
require 'better_errors'
require './lib/item.rb'
require './lib/juego.rb'

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

enable :sessions
set :session_secret, 'thisIsAKleerSecret'

get '/' do
    session["numFilas"]=3
    session["numColumnas"]=6
    session["juego"] = Juego.new
	erb :tablero
end

post '/mostrarItem/:idbutton' do |id|
  numero = id.to_i
  puts "numero =>" + numero.to_s
  filaSeleccionada = numero / session["numColumnas"] -1
  columnaSeleccionada = numero % session["numColumnas"] -1
  puts "filaSeleccionada =>" + filaSeleccionada.to_s
  puts "columnaSeleccionada =>" + columnaSeleccionada.to_s
  session["juego"].getItem(filaSeleccionada, columnaSeleccionada).seleccionarItem
  erb :tablero
end