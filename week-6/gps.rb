# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  pantry = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  raise ArgumentError.new("#{item_to_make} is not a valid input") unless pantry[item_to_make] 

  serving_size = pantry[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size


  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
# What did you learn about making code readable by working on this challenge?
# Its important to consider several factors when making readable code.  Do your methods make sense are they readable and uncluttered.  Are there unecessary variables. Are your methods and variables labelled in an easily understandable way.

# Did you learn any new methods? What did you learn about them?
# Had not seen the case function before but its pretty straightforward, it basically runs like an if statement but with different nomenclature.

# What did you learn about accessing data in hashes? 
# While you could turn the data into an array and then pull it that way (as it was in the initial code), but it is generally simpler to just call the data by the key.

# What concepts were solidified when working through this challenge?
# The multiple things that one wants to look for while refactoring and making cleaner code.  I definitely can improve my variable naming.  Also highlights how while there can be multiple solutions to a problem sometimes certain options are too convoluted