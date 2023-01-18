def half_pyramid
  p "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  number = gets.chomp.to_i

  number.times do |i|
    (number - i).times {print " "}
    (i + 1).times {print "#"}
    puts
  end
end


def full_pyramid
  p "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  nb = gets.chomp.to_i
  nb.times do |num|
    (nb - num).times {print " "}
    num.times {print "#"}
    (num - 1).times {print "#"}
    puts
  end
end

def wtf_pyramid
  p "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"

  nb = gets.chomp.to_i

  nb -= (nb -1) /2
  # pyramide du haut
  nb.times do |num|
    (nb - num).times {print " "}
    num.times {print "#"}
    (num - 1).times {print "#"}
    puts
  end

    # pyramide du bas
  nb.downto(1) do |num|
    (nb - num).times {print " "}
    num.times {print "#"}
    (num - 1).times {print "#"}
    puts
  end
end

# half_pyramid
# full_pyramid
wtf_pyramid