# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? An array of values, a minimum number of array values, possibly an element to pad the array with
# What is the output? (i.e. What should the code return?)
# An array with a number of elements equal to or greater than our minimum array value
# What are the steps needed to solve the problem?
# If array count is greater than or equal minumum array value
  # if true return array
#Else we need to pad the array with either nil or our specified value
  # number times
    # pad with value
    # this will be when we indicate destructiveness
  # return the array


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.count >= min_size
    return array
  else
    (min_size - array.count).times do
      array << value
    end
    return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = Array.new(array)
  if array.count >= min_size
    return new_array
  else
    (min_size - array.count).times do
      new_array << value
    end
  return new_array
  end
end

# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
    (min_size - array.count).times do
      array << value
    end
    return array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = Array.new(array)
    (min_size - array.count).times do
      new_array << value
    end
  return new_array
end


# 4. Reflection
#Were you successful in breaking the problem down into small steps?
# I think we were.  We identified what we needed to occur and what steps were involved.

#Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# The pseudocode led pretty easily to what we wanted.  It gave us a good guideline for our steps

#Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# We had an error with our non-destructive code.  We did not create a new variable for our array which led to this issue.

#When you refactored, did you find any existing methods in Ruby to clean up your code?
# Not sure if this was meant to be, but because you cannot do something negative times, we were able to completely
# remove our if and else statements

#How readable is your solution? Did you and your pair choose descriptive variable names?
# I think our solution is pretty simple and readable.  We only added one new variable and its clearly labelled.

#What is the difference between destructive and non-destructive methods in your own words?
# In a destructive method, you are changing or altering the original element in some way, while non-destructive methods keep the original element the same and either create or alter another element
