# To build a class named motorcycle_rider

# initialize method
# input: an integer and an array of types of motorcycles and an array of riders names
# steps: call initialize method with appropriate arguments
#   steps: create attributes (rider, age, motorcycle_make)
# output: the initialized class with corresponding parameters

# speed method
# input: integer
# steps: create a speed method that takes an integer as a parameter.
#   steps: default speed method inside the initialize method to 0
# output: an integer of the riders speed

# location method
# input: array of different locations
# steps: create an array of locations that is assigned to an instance variable
# output: the riders location

# trick method
# input: an array of tricks
# steps: create an array of tricks that will be assigned to an instance variable
# output: a trick the rider performed

class Motorcyle_rider
  attr_reader :bike_make
  attr_accessor :age, :name, :place, :action

  def initialize(name, age, bike_make)
    puts "Initializing new rider....."
    @name = name
    @age = age
    @bike_make = bike_make.capitalize
  end

  def speed(mph)
    mph = rand(mph..250)
    "#{mph} MPH"
  end

  def location(place)
    puts "Is in beautiful #{place}"
  end

  def trick(action)
    puts "Just #{action}"
  end

end



riders = ['MCspeed', 'Pastu', 'Dusty', 'Daren', 'Firsty', 'Tooquick', 'Seeya']

p mcspeed = Motorcyle_rider.new('mcspeed', 50, 'honda')
p mcspeed.speed(20)
 mcspeed.location('San Diego')
 mcspeed.trick('Wheelied')