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
  attr_reader :place, :action, :mph
  attr_accessor :age, :name, :bike_make

  def initialize(name, age, bike_make)
    puts "Initializing new rider....."
    @name = name
    @age = 0
    @bike_make = bike_make.capitalize
  end

  def speed
    mph = rand(1..250)
    "#{@name} is going #{mph} MPH"
  end

  def location(place)
    puts "#{@name} is in beautiful #{place}"
  end

  def trick(action)
    puts "#{@name} just #{action}!!"
  end

end



# p mcspeed = Motorcyle_rider.new('mcspeed', 50, 'honda')
# p mcspeed.speed
 # mcspeed.location('San Diego')
 # mcspeed.trick('Wheelied')

action = ['Wheelied', 'Crashed', 'Burned out', 'Disappeared', 'Jumped', 'got pulled over']
place = ['San Diego', 'Los Angeles', 'Chicago', 'New York', 'Texas', 'San Francisco', 'Italy', 'France', 'Brazil', 'Australia']

user_input = []

 puts "Motorcycle Rider Creator 1.0 (type 'done' to end)"
 puts "-" * 20
 puts "Continue? (y/n)"
 start = gets.chomp

   until start == 'done' || start == 'n'
     puts "Name your rider"
     @name = gets.chomp.capitalize
     puts "How old is your rider?"
     @age = gets.chomp.to_i
     puts "What kind of motorcycle are they riding?"
     @bike_make = gets.chomp
     puts "CONTINUE? (y/n)"
     puts "-" * 10
     start = gets.chomp
     user_input << Motorcyle_rider.new(@name, @age, @bike_make)
   end

user_input.each do |index|
  p index
  index.trick(action.sample)
  index.location(place.sample)
end