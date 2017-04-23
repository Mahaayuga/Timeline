require_relative 'controllers/life_process.rb'

#chargement des évènement
mylife = Life.new
mylife.mise_en_memoire("../db/db.csv")



=begin
# naviguer dans les évènements
k = rand(1..130)
k = 27

unless mylife.this_one('masque',  k) == false
  puts mylife.this_one('jour',    k)
  puts mylife.this_one('annee',   k)
  puts mylife.this_one('nom',     k)
  puts mylife.this_one('symbole', k)
  puts mylife.this_one('masque',  k)
  puts mylife.this_one('img1',    k) if mylife.this_one('img1', k) != nil
  puts mylife.this_one('img2',    k) if mylife.this_one('img2', k) != nil
end
=end
