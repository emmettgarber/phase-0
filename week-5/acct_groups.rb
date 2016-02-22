# Pseudocode
# Define a method that takes an array.
# Shuffle the array
# Split the original array into groups of 4

def groups(cohort)
  cohort.shuffle!
  array = cohort.each_slice(4).to_a
  if array[(array.count - 1)].length < 3
    x = 0
    (array[(array.count - 1)].length).times do
      y = array[(array.count - 1)].pop
      array[x] << y
      x += 1
    end
    array.delete(array[array.count - 1])
  end
  array
end

p groups(["Adam Pinsky", "Afaan Naqvi", "Andrew Crowley", "Alana Farkas", "Anna Lansfjord", "Andrew Vathanakamsang", "Benjamin Heidebrink", "Blair White", "Brad Lindgren", "Brian Donahue", "Brittney Braxton", "Camila Crawford", "Charlie Lee", "Chunyu Ou", "Daniel Homer", "Daniel Shapiro", "David Kaiser", "David Ramirez", "Emily Osowski", "Emmet Garber", "Eric Gumerlock", "Greg Toprak", "Hanna Taylor", "Dave Hostios", "Jack Baginski", "Jasmeet Chatrath", "Jaclyn Feminella", "Jason Allen", "Jon Norstrom", "jonathan nicolas", "Joshua Lugo", "Joseph Yoo", "Joshua Wu", "Julia Giraldi", "Kari Giberson", "Katherine Broner", "Kevin Fowle", "Kevin Niu", "Kevin Perkins", "Li-Lian Ku", "Leo Kukhar", "Erica Lloyd", "Marita Deery", "Michael Verthein", "Milorad Felbapov", "Nick Russo", "Brian Mosley", "Noah Schutte", "Ryan Dempsey", "Sami Zhang", "Oscar Delgadillo", "Ryan W.", "Saralis Rivera", "Sean Norton", "Shyh Hwang", "Sydney Rossman-Reich", "Theo Paul", "Tomasz Sok"])

# What was the most interesting and most difficult part of this challenge?
# The most interesting and difficult part of the challenge was probably thinking of how to remove groups that were too small.  There were probably a lot of ways to do this but I settled on making all groups a base of 4 and then dividing up the last group if necessary.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# Yes I feel like i get better everytime.  I get better at catching steps I am forgetting by pseudocoding

# Was your approach for automating this task a good solution? What could have made it even better?
# While maybe not the most readable code I think mine is pretty effective.  I feel like maybe setting more variables would have made the code  alittle prettier and there is probably some refactoring I could do

# What data structure did you decide to store the accountability groups in and why?
# I decided to store the groups in an array, because I thought it would be easier to see each group that way, and easier to update values if a group had to be adjusted.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# While doing this challenge, I learned about the each slice which helped me easily break up the larger array into smaller groups.