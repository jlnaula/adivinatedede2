require 'sinatra'
require 'better_errors'
require './lib/item.rb'

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

enable :sessions
set :session_secret, 'thisIsAKleerSecret'

get '/' do
    session["numFilas"]=3
    session["numColumnas"]=6
    session["item"] = Item.new
	erb :tablero
end