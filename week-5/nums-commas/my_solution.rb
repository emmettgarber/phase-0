# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? Any integer
# What is the output? (i.e. What should the code return?) A string of the integer with commas inserted
# What are the steps needed to solve the problem?
# define a method that takes an integer as a value
# Turn the integer into a string and split it into an array, reverse the array, 
# while the array count is greater than 0
# if array count is 


# 1. Initial Solution
def seperate_comma(number)
  string = number.to_s.chars
  final_string = ""
  while string.count > 3
      3.times do 
        x = string.pop
        final_string << x
      end
      final_string << (",")
  end 
  (string.count).times do
    y = string.pop
    final_string << y
    end
    ultstring = final_string.reverse
  return ultstring
end

p seperate_comma(1234)



# 2. Refactored Solution
def seperate_comma(number)
  string = number.to_s.chars
  final_string = ""
  while string.count > 3
      3.times do 
        x = string.pop
        final_string << x
      end
      final_string << (",")
  end 
  (string.count).times do
    y = string.pop
    final_string << y
    end
    ultstring = final_string.reverse
  ultstring
end




# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
# I needed to change the integer into a string, then break the string into an array, then put it back together with the commas inside.  I considered using if or while but decided to go with while, it was a little simpler and cleaner.
# Was your pseudocode effective in helping you build a successful initial solution?
# Yes, it was helpful in thinking out all of the steps required to complete the task.  Made me think of some of the factors I had glanced over while first thinking about the problem.
# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# I did not use any new methods that I had not used before in some capacity, but this was only the second time I have used pop 
#How did you initially iterate through the data structure?
# I use two different ().times do iterations
# Do you feel your refactored solution is more readable than your initial solution? Why?
# Its mostly the same, with the way i set it up I couldnt really clean it up with something liek a pop(3), but i got rid of an unnecessary return.