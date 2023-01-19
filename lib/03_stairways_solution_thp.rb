def roll_dice
  return rand(7)
end

def analyze_dice(dice)
  case dice
  when 1
    p "Vous reculez !"
    return -1

  when 5, 6
    p "Vous avancez !"
    return 1

  else
    p "Rien ne se passe"
    return 0
  end
end

def show_state(num)
  p "Vous êtes sur la marche n°#{num}"
end

def is_over?(num)
  if num == 10
    return true
  else
    return false
  end
end

def play
  puts "Bienvenue dans le jeu!!"

  step = 1
  show_state(step)

  while(!is_over?(step)) do
    puts "tapez 'entrée' pour jouer"
    gets.chomp
    step += analyze_dice(roll_dice)
    show_state(step)
  end

  puts "===Vous avez gagné!==="
end

play