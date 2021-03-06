# Virus Predictor

# I worked on this challenge [by myself, with: Ryan Milstead].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
#require relative is used to load a file that resides in the same directory.
#
require_relative 'state_data'

class VirusPredictor

  #initializes our VirusPredictor class with three attributes as parameters

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #calls method predicted_deaths and speed_of_spread with specific attribute parameters

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  #private method would change the access availability for the methods below the method.

  private

  #method takes three parameters and filters them through a if else conditional statement.
  # Outputting the print statement.

  def predicted_deaths
    # predicted deaths is solely based on population density

    if @population_density >= 200
      num = 0.4
    elsif @population_density >= 150
      num = 0.3
    elsif @population_density >= 100
      num = 0.2
    elsif @population_density >= 50
      num = 0.1
    else
      num = 0.05
    end

    number_of_deaths = (@population * num).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #method is taking two parameters and filtering them through a if else conditional statement
  # once the parameter is met with its corresponding conditional, speed is assigned its associated
  # variable

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, information|
  selected_state = VirusPredictor.new(state, information[:population_density], information[:population])
  puts selected_state.virus_effects
end


#=======================================================================
# Reflection Section

#What are the differences between the two different hash syntaxes shown in the
# stat_date file?

  #Answer = The hash rocket is used when the key is declared with a string. The colon hash
  # is used when you are creating a symbol as a key.

#What does require_relative do? How is it different from require?

  #Answer = require_relative is a subset of require, basically a shorthand of the method.
  # Require is used when referencing modules and can be used to attach files.

#What are some ways to iterate through a hash?

  #Answer = one way to iterate through a hash is by using the .each method using a block
  # that references the key and value set inside pipe characters.
  # Also, one could use the each pair method to iterate through a hash.

#When refactoring virus_effects, what stood out to you about the variables, if anything?

  #Answer = The thing that stood out to me most was the repetitiveness with
  # setting the variable and referencing the instance variables.

#What concept did you most solidify in this challenge?

  #I was definitely a bit surprised by the refactoring of method parameters. It was
  # amazing to see them work solely on instance variables. Also, refactoring has between
  # a bit frustrating for me at times because I usually make the problem more complicated
  # in my head. Ryan gave me some great insight and helped me understand some valuable
  # concepts when refactoring.