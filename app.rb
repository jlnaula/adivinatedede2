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
    session["puntosGanados"]=0
    session["nroClicks"]=0
    session["fila1"]=0
    session["col1"]=0
    
    session["juego"] = Juego.new
	erb :tablero
end

post '/mostrarItem/:idbutton' do |id|
  
  session["nroClicks"] +=1
  numero = id.to_i - 1
  filaSeleccionada = numero / session["numColumnas"]
  columnaSeleccionada = numero % session["numColumnas"]
  
  if session["nroClicks"] ==1
    
    session["fila1"] = filaSeleccionada
    session["col1"] = columnaSeleccionada
    session["juego"].getItem(filaSeleccionada, columnaSeleccionada).seleccionarItem
  else
    item1 = session["juego"].getItem(session["fila1"].to_i, session["col1"].to_i)
    item2 = session["juego"].getItem(filaSeleccionada, columnaSeleccionada)
    
    puts "val1" + item1.getValor
    puts "val1" + item2.getValor
    if (item1.getValor == item2.getValor)
      item1.desactivarItem
      item2.desactivarItem
    else
      item1.resetearItem
      item2.resetearItem
      
    end
    session["fila1"] = 0
    session["col1"] = 0
    session["nroClicks"]=0
  end
  
  erb :tablero
end