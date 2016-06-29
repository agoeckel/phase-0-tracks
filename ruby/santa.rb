class Santa

  def speak
    p "HO, HO, HO!! Meeerrry Christmas!"
  end

  def eat_milk_and_cookies(cookie)
    p "That was a good #{cookie}!"
  end

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    eat_milk_and_cookies('Sugar Cookie')
    speak
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

end

# realsanta = Santa.new
# realsanta.eat_milk_and_cookies('Chocolate cookie')
# realsanta.speak

santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")


gender = ['agender', 'female', 'bigender', 'male', 'gender fluid', 'N/A']
ethnicity = ['white', 'black', 'latino', 'Japanese', 'prefer not to say', 'Mystical Creature (unicorn)', 'N/A']

gender.length.times do |index|
  santas << Santa.new(gender[index], ethnicity[index])
end

p santas

