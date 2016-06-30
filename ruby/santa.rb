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
    @age = 0
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

  def age
    @age
  end

  def gender
    @gender
  end

  def ethnicity
    @ethnicity
  end

  def reindeer_ranking
    @reindeer_ranking
  end

  def gender=(new_gender)
    @gender = new_gender
  end

  def age=(new_age)
    @age = new_age
  end

  def celebrate_birthday
    @age + 1
  end

  def get_mad_at(reindeer)
    index = @reindeer_ranking.rindex(reindeer)
    @reindeer_ranking.insert(7, @reindeer_ranking.delete_at(index))
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

p santas[0].age = 50
p santas[0].celebrate_birthday
p santas[0].get_mad_at('Donner')
p @reindeer_ranking