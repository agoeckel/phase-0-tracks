# Prompt the user for information about the client
# information will be stored in a hash
# stored information will be converted to the hash formatting
# iformation will then be rendered back to the client in proper formatting
# if client states none for a value field, skip field
# update key values if necessary.
# print the final client entries of the hash and exit

puts "Please enter your name"
print "> "
name = gets.chomp

puts "Please enter your age"
print  "> "
age = gets.chomp.to_i

puts "How many children do you have?"
print "> "
children = gets.chomp.to_i

puts "What is your desired decor theme?"
print "> "
decor_theme = gets.chomp

puts "What is your favorite color?"
print "> "
color = gets.chomp

puts "Do you have pets(y/n)"
print "> "
pets = gets.chomp

client = {
  name: name,
  age: age,
  children: children,
  decor: decor_theme,
  color: color,
  pets: pets
}

print client