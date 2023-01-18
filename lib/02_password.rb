def signup
  p "Veuillez définir votre mot de passe"
  user_passwd = gets.chomp
  return user_passwd
end

def login(user_passwd)
  passwd_login = ""
  while user_passwd != passwd_login do
    if passwd_login != "" 
    p "Ce n'est pas le bon mot de passe"
    end
    p "Entrez votre mot de passe :"
    passwd_login = gets.chomp
  end
  return true
end

def welcome_screen
  p "Bienvenue dans ta zone secrète ;)"
end

def perform
  if login(signup) then welcome_screen end
end

perform
