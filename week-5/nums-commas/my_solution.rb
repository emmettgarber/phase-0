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




# 3. Reflection