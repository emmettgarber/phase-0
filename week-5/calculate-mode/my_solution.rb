# 0. Pseudocode

# What is the input? an array of numbers of strings
# What is the output? (i.e. What should the code return?) the mode (i.e. most common element) from the input
# What are the steps needed to solve the problem?
#Get array from input
#initialize a hash
#iterate over array
#for each item, if it already exists, increment the value by 1, if not, add key and value of one to hash
#sort hash by max value
#output result of search


# 1. Initial Solution
def mode(array)
 counter = Hash.new
 while array.length >0
   x = array.pop
   if counter.has_key?(x)
     counter[x] +=1
   else
     counter[x] = 1
   end
 end
p counter.select { |k, v| v == counter.values.max }.keys.sort
end

mode(["a","b","c","d","d","d","e","d"])

# 3. Refactored Solution
def mode(array)
counter = Hash.new
 while array.length >0
   x = array.pop
   counter.has_key?(x) ? counter[x] +=1 : counter[x] = 1
 end
 p counter.select { |k, v| v == counter.values.max }.keys.sort
end



# 4. Reflection

# Which data structure did you and your pair decide to implement and why?
# We created a new hash and used their key value relationship to determine what the mode was.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# I think this was equally as succesful as my last pair, but this challenge required better pseudocode to get the desired result.

# What issues/successes did you run into when translating your pseudocode to code?
# We had some minnor issues in getting all of our symbols right, and had to do some research on which enumerables to use to get all values.  Good use of pop.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# We used the while function. In our refactor we were able to move or if and else into a single line which made things a lot nicer. It wasnt too difficult to implement, just had to think out the steps.