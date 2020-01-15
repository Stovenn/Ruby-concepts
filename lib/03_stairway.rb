# A ameliorer : le jeu se lance une fois avant de demander a l'utilisateur combien de partie il souhaite simuler
def dice_launch  
  result = rand(1..6)
  return result
end

def game (dice_value)
  floor = 10
  dice = dice_value
  position = 0
  nb_tour = 0

  while position < floor
    if dice  == 1 && position != 0 
      position -= 1
      puts "Quelle dommage, vous etes redescendu sur la #{position}eme marche."
      nb_tour += 1
    elsif dice  == 1 && position == 0 
      puts "Il ne se passe rien, vous restez sur la #{position}eme marche."
      nb_tour += 1
    elsif dice == 5 || dice == 6
      position += 1
      puts "Vous avancez, vous etes desormais sur la #{position}eme marche."
      nb_tour += 1
    else 
      puts "Il ne se passe rien, vous restez sur la #{position}eme marche."
      nb_tour += 1
    end
    dice = dice_launch
  end
  puts "Felicitations, vous etes arrive au sommet !"
  return nb_tour
end


def average_finish_time(nbtour)
  tab = []
  puts "Combien de parties voulez-vous simuler ?"
  comtpteur = gets.chomp.to_i
  i = 1
  tour = nbtour
  mid = 0
  while i <= comtpteur
    tour = game(dice_launch)
    tab << tour
    i += 1
  end
  tab.each do |nb|
    mid += nb 
  end 
  moyenne = mid / tab.size
  puts "Sur #{comtpteur} parties le jeu se fini en moyenne au bout de #{moyenne} tours."
end
  
def perform 
  average_finish_time(game(dice_launch))
end

perform

