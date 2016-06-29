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
  end

end

realsanta = Santa.new
realsanta.eat_milk_and_cookies('Chocolate cookie')
realsanta.speak
