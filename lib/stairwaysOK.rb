def game
  stair = 0
  turn = 0
  while stair < 10
    de = rand(1..6)
    p de
    case de
      when 1
        stair -= 1
        if stair < 0 then stair = 0 end
        p "Tu descends d'une marche, tu es à la marche n°#{stair}."
        p "marche #{stair}"

      when 2..4
        if stair < 0 then stair = 0 end
        p "Tu ne bouges pas, tu restes à la marche n°#{stair}."
        p "marche #{stair}"

      when 5..6
        stair += 1
        p "Tu avances d'une marche, tu es maintenant à la marche #{stair}."
        p "marche #{stair}"
    end
    turn += 1
  end
  p "Tu as fini en #{turn} tours."
end

def average_finish_time
  while marche < 10 do
    game(marche)
  end
end
game
