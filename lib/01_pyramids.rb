# def half_pyramid
#   i = 1
#   print "> "
#   floor = gets.chomp.to_i
#   space = floor 

#   while (i <= floor) do
#       (space - 1).times {print " "}
#       i.times {print "#"}
#       puts "\n"
#       i += 1
#       space -= 1 
#   end
# end

# def full_pyramid
#   i = 1
#   puts "Hey, tu veux combien d'etages ?"
#   print "> "
#   floor = gets.chomp.to_i
#   space = floor 

#   while (i <= floor) do
#     (space - 1).times {print " "}
#     i.times {print "#"}
#     (i-1).times {print "#"}
#     i += 1
#     space -= 1 
#     puts "\n"
#   end
# end


def user_input
  puts "Hey, tu veux combien d'etages ? (choisis un nombre impair)"
  print "> "
  floor = gets.chomp.to_i
  while floor %2 == 0 do
    puts "Attention, il faut choisir un nombre impair !"
    print "> "
    floor = gets.chomp.to_i
  end
  return floor
end


def wtf_pyramid(floor)
  i = 1
  space = (floor - i) / 2
  while (i < floor) do
      (space).times {print " "}
      i.times {print "#"}
      i += 2
      space -= 1 
      puts "\n"
  end

  floor.times {print "#"}
  puts "\n"

  while (i >= 1)
    i -= 2
    space += 1
    (space).times {print " "}
    i.times {print "#"}
    puts "\n"
  end
end

wtf_pyramid(user_input)

# i = 1
# j = 1
# print "> "
# floor = gets.chomp.to_i
# space = floor 


# while (i <= floor) do
#     (space - 1).times {print " "}
#     i.times {print "#"}
#     print "  "
#     i.times {print "#"}
#     i += 1
#     space -= 1 
#     puts "\n"
# end

