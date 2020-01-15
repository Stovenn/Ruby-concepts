def say_hello (first_name)
  puts "Bonjour #{first_name}"
end

def ask_first_name
  puts "Hello, please enter your first name :"
  print "> "
  return first_name = gets.chomp
end
say_hello(ask_first_name)