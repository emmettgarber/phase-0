# Virus Predictor

# I worked on this challenge [with: Jon].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require another file in same directory with matching name
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths
    # (@population_density, @population, @state)
    speed_of_spread
    # (@population_density, @state)
  end

private

  def predicted_deaths
    # (population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density < 50
      number_of_deaths = (@population * 0.05).floor
    else 
      number_of_deaths = (@population * ((@population_density/50).floor * 0.1).round(1)).floor
    end

    

    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread
    # (population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = 0.0

    # if @population_density >= 200 # upper 
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5 # lower
    # end
    speed = 2.5
    if @population_density >= 200 
      speed -= 2
    elsif @population_density >= 50
      speed -= ((@population_density/50).floor * 0.5)
    else
      speed
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each { |key, value|
  data = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population])
  data.virus_effects
}

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
#
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
#
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
#
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# You can use the => to make anything a key but the : method can only be used if he keys are symbols (ie what would otherwise be strings)

# What does require_relative do? How is it different from require?
# Require_relative requires that there be another file in the same directory with the corresponding name, 
# while relative does not require it to be in the same directory
# What are some ways to iterate through a hash?
# You can use an each do, from our driver code area we were able to run a STATE_DATA.each to pull the value

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# The arguements were generally not needed in the methods that they were running.

# What concept did you most solidify in this challenge?
# Some of the behaviors of classes and when arguements are unnecassary