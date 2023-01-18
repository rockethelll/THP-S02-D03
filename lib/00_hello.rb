def say_hello(name)
  p "Bonjour, #{name}!"
end

def ask_first_name
  p "Quel est ton prénom ?"
  first_name = gets.chomp 
  return first_name
end

first_name = ask_first_name

say_hello(first_name)