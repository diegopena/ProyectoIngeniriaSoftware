require 'sinatra'
require './lib/TorosVacas.rb'
require './lib/cronometro.rb'

get '/' do    
    $torovaca=ToroVaca.new("")
    $contador=11
    erb :index
end

post '/juego' do
    $contador -= -1
    erb :juego
end

post '/intento' do
    erb :intento
end

get '/configuracion' do
    erb :configuracion
end