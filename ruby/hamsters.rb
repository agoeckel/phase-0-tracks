puts "What is your hamsters name?"
name = gets.chomp
puts "Hello little #{name}"

puts "What is your hamsters volume level(1-10)"
volume = gets.chomp.to_i
puts "Your volume level is #{volume}"

puts "What is your hamsters fur color"
fur = gets.chomp
puts "Is the hamster a good candidate for adoption?(y/n)"
answer = gets.chomp
puts "Whats your hamsters estimated age?"
age = gets.chomp
  if age == ""
    puts nil
  end

