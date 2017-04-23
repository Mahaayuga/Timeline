require 'sinatra'
require 'slim'
require_relative 'controllers/life_process.rb'

#chargement des évènement
mylife = Life.new
mylife.mise_en_memoire("../db/db.csv")

get '/' do
  slim :public, locals: {life: mylife}
end

get '/test' do
  slim :test, locals: { life: mylife }
end

get '/private' do
  slim :public, locals: {all: TRUE}
end
