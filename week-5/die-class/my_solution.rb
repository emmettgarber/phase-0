# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: An integer idicating the number of sides
# Output: A count of the sides, a random integer between 1 and the amount of sides
# Steps: Create a class
# Define a method that accepts an integer greater than one, if false return and error, if true define that integer as a instance variable
# Define a method that returns the number of sides based of the instance variable
# Define a method that returns a random number from 1 to the instance variable



# 1. Initial Solution

class Die
  def initialize(sides)
    unless sides >= 1
      raise ArgumentError.new("Must be an integer larger than one")
    end
    @sides = sides
  end

  def sides
    return @sides
  end

  def roll
    rand(1..@sides)
  end
end




# 3. Refactored Solution
class Die
  def initialize(sides)
    unless sides > 1
      raise ArgumentError.new("Must be an integer larger than one")
    end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end

# 4. Reflection
# What is an ArgumentError and why would you use one?
# You use an Arguement error to indicate that an arguement that is submitted doesnt fit neccesary criteria. It indicates that the arguement does not work and provides a description of how to fix it.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# I used rand, raise, and class.  Rand and raise were pretty easy, it took a good look to make sure all the variables were correctly labelled to be part of the class.

# What is a Ruby class?
# It is a collection of methods.

# Why would you use a Ruby class?
# When you want to perform several methods on the same set of variables

# What is the difference between a local variable and an instance variable?
# A local variable is defined within a method, an instance variable is defined within the class.

# Where can an instance variable be used?
# An instance variable can be used anywhere throughout a class