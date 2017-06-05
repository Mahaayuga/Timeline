require 'sinatra'
require 'slim'
require_relative 'controllers/life_process.rb'

#chargement des évènements
mylife = Life.new
mylife.mise_en_memoire("../db/db.csv")

get '/' do
  slim :public, locals: { life: mylife }
end

get '/theme/:name' do
# does not work, never...
  if params['name'] == 'code'
    slim :test,   locals: { life: mylife,
                            symbole: 'fa fa-code' }
  end

end

get '/private' do
#will show all events
  slim :public, locals: { life: mylife }
end
