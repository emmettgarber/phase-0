# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # define a method with our string
  # Set an array where we split the string
  # Move the values in the array into a hash 
  # set default quantity to 1
  # print the list to the console [can you use one of your other methods here?]
# output: Hash of our list items and their quantity

# Method to add an item to a list
# input: item name and optional quantity
# steps: Define a method
  # reference our hash
  # add a new item to the hash
# output:

# Method to remove an item from the list
# input: our list and the item we want to remove
# steps: remove the item from the hash of our  list
# output:the updated list

# Method to update the quantity of an item
# input: out list, the item we want to add and the quantity
# steps: Call the item you want to change and update quantity
# output: Updated list

# Method to print a list and make it look pretty
# input: Our List
# steps for each item add flavor text then print
# output: Our list of items with our phrase

def list(items)
  split_list = items.split
  list_hash = Hash.new
  split_list.each do |x|
    list_hash[x] = 1
  end
  list_hash
end

def add_item(new_item, list, quantity = 1)
  list[new_item] = 1
  list
end

def update(list,item, quantity)
 list[item] = quantity
 return list
end

def print(list)
 list.each do |item, quantity|
 	puts "I need #{quantity} #{item} "
 end
end


my_list = list("carrots apples cereal pizza")
p add_item("salsa", my_list)
p add_item("chips", my_list)
p remove(my_list, "cereal")
p update(my_list, "apples", 4)
p print(my_list)

#What did you learn about pseudocode from working on this challenge?
# Not a lot, my partner wasnt to interested in psuedocoding but it reaffirmed that its important to plan out each step

#What are the tradeoffs of using Arrays and Hashes for this challenge?
# Arrays would require some extra steps in your methods that I dont think Hashes require becasue hashes are paired values

#What does a method return?
# Either what you tell it to return or it implicitly returns you last step

#What kind of things can you pass into methods as arguments?
# You can pass variables, arrays, lists and other methods

#How can you pass information between methods
# you can save the information as variables and call them in your methods

#What concepts were solidified in this challenge, and what concepts are still confusing?
# It solidfied altering hashes, and how to save methods as variables.  Sometimes putting all my steps together to make sure a variable is adjusted the way I want can still be a challenge.