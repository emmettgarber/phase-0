# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode
 
# Input: an array of values that represent individual sides on a die
# Output: the number of sides, and one random side
# Steps: Set initialize to take an array, count to see if it has at least one value (if not arguement error), if true set array as instance variable
# def method using instance variable count the number of elements in array and return that
# def method that selects a random value from the array


# Initial Solution

class Die
  def initialize(labels)
    unless labels.count >= 1
      raise ArgumentError.new("Labels must have at least 2 values in its array")
    end
    @labels = labels
  end

  def sides
    @sides = @labels.count
    @sides
  end

  def roll
    @labels[rand(0..(@labels.count-1))]
  end
end



# Refactored Solution
class Die
  def initialize(labels)
    unless labels.count >= 1
      raise ArgumentError.new("Labels must have at least 2 values in its array")
    end
    @labels = labels
  end

  def sides
    @sides = @labels.count
  end

  def roll
    @labels[rand(0..(@labels.count-1))]
  end
end

#tried refactoring with @sides instead of labels but it caused errors, not really getting why. Maybe I would have to set the @sides in initialize.







# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# Well the main thing is that this one accepts an array as an arguement where the last die just needed an integer.  This mostly just meant that it added in a extra step of counting the array, the other aspects were pretty much the same

# What does this exercise teach you about making code that is easily changeable or modifiable? 
# There can be a lot of code that can be reused, sometimes its good to go back and use things you all ready know work and just repolace what you have to.  You dont always need to reinvent the wheel.

# What new methods did you learn when working on this challenge, if any?
# In this challenge I just used methods I had done before.

# What concepts about classes were you able to solidify in this challenge?
# It was good playing with instance variables and seeing how they interact some more.  It was also good to see other arguements other than integers in a class to see that they all behave as I would expect.