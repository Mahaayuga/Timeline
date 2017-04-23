require 'csv'

class Life
  def initialize
    @life= []
  end

  def mise_en_memoire(csv_file_name)
    CSV.foreach(csv_file_name, { :col_sep => ';' }) do |row|
      @life << CSVReader.new(row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9])
    end
  end

  def this_one(data, i)
    case data
      when 'index'    then @life[i].index
      when 'jour'     then @life[i].jour
      when 'annee'    then @life[i].annee
      when 'symbole'  then @life[i].symbole
      when 'nom'      then @life[i].nom
      when 'masque'   then @life[i].masque
      when 'img1'     then @life[i].img1
      when 'img2'     then @life[i].img2
      when 'img3'     then @life[i].img3
      when 'img4'     then @life[i].img4
    end
  end

  def count
    @life.size
  end

end

class CSVReader
  attr_reader :index, :jour, :annee, :symbole,
              :nom, :masque,
              :img1, :img2, :img3, :img4

  def initialize (index, jour, annee, symbole, nom, masque, img1, img2, img3, img4)
    @index   = index.to_i
    @jour    = jour.to_s
    @annee   = annee
    @symbole = symbole
    @nom     = nom
    @masque  = masque
    @img1    = img1
    @img2    = img2
    @img3    = img3
    @img4    = img4
  end

  def to_s
    "#{@jour} #{@annee} #{@nom}"

  end

end
