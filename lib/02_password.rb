def signup
  puts "Bonjour, veuillez creer un mot de passe :"
  password = gets.chomp
  puts "Veuillez confirmer votre mot de passe :"
  validation = gets.chomp
  while password != validation
    puts "Vos deux mots de passe ne correspondent pas, veuillez ressaisir votre mot de passe :"
  validation = gets.chomp
  end
  return password
end

def login(signup)
  password = signup
  essai = 2
  puts "Bonjour, veuillez saisir votre mot de passe pour vous connecter :"
  user_input = gets.chomp 
    while essai >=1 
      if user_input != password 
        puts "Mot de passe incorrect, veuillez ressaisir votre mot de passe (Il  vous reste #{essai}essai(s)) :"
        essai -= 1
        user_input = gets.chomp
      else 
        return 1 
      end
    end
  puts "Votre compte a ete bloque"
  return 0
end

def welcome_screen(login)
  success = login
  if success
    puts "Bienvenue soldat, tu as été recruté pour la 3eme guerre mondiale !"
    puts "Nous avons trouve un campement d'Alien pres de la zone 51."
    puts "Va au point de rencontre et attends les instructions."
    puts "God bless America."
  end
end 

def perform
  login = login(signup)
  welcome_screen(login)
end

perform