

puts "What is your name?"
print "> "
name = gets.chomp
puts "How old are you?"
print "> "
age = gets.chomp.to_i
puts "What year were you born?"
print "> "
birth_year = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you?(y/n)"
print "> "
garlic_bread = gets.chomp
puts "Would you like to enroll in the company's health insurance?(y/n)"
print "> "
health_insurance = gets.chomp


if age == 2016 - birth_year && garlic_bread == "y" || health_insurance == "y"
  puts "Probably not a vampire"
elsif age != 2016 - birth_year && garlic_bread == "y" || health_insurance == "y"
  puts "Probably a vampire"
elsif age != 2016 - birth_year && age > 100 &&garlic_bread == "n" && health_insurance == "n"
  puts "Almost certainly a vampire"
elsif name == "Drake Cula" || "Tu Fang"
  puts "Definitely a vampire"
else
  print "Results inconclusive"
end






