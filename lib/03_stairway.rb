def dice
  de = rand(1..6)
  p de
  return de
end

def stair_origin
  stair = 0
end

def game(de, marche)
  case de
    when 1
      marche -= 1
      if marche < 0 then marche = 0 end
      p "Tu descends d'une marche, tu es à la marche n°#{marche}."
      p "marche #{marche}"

    when 2..4
      if marche < 0 then marche = 0 end
      p "Tu ne bouges pas, tu restes à la marche n°#{marche}."
      p "marche #{marche}"

    when 5..6
      marche += 1
      p "Tu avances d'une marche, tu es maintenant à la marche #{marche}."
      p "marche #{marche}"
    end
    return marche
    p "Marche a la boucle finale : #{marche}"
end

def average_finish_time(partie)
  10.times do 
    game(dice, stair_origin)
  end
end

  def perform
    game(dice, stair_origin)
  end

  # perform
  average_finish_time(game(dice, stair_origin))