# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [2] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Create array and pick a random letter from the array set it to an instance variable
  #Generate random number and set it to instance variable
  #Set an instance variable that is a string of the other two instance variables of randoms

# Check the called column for the number called.
  #Create a hash with the letters as keys and 0-4 as values in the hash
  #Run an each on the the board, use an if to determine if the value is in the right spot using the key from the hash referencing the letter instance variable

# If the number is in the column, replace with an 'x'
  #Using the same method above to call the same spot use a boolean to replace the number with an X

# Display a column to the console
  # P the row

# Display the board to the console (prettily)
  # include a print in the call method to show the new bingo number
  #Print "Your Board"
  # for the else p the board

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end
  
  def call
    letters = ["B", "I", "N", "G", "O"]
    @let = letters.sample
    @num = rand(100)
    p @call = "#{@let}#{@num}"
  end
  
  def check
    key = { "B" => 0, "I" => 1, "N" => 2, "G" => 3, "O" => 4}
    p "Your Board"
    @bingo_board.each { |row|
      if row[(key[@let])] == @num
        row[(key[@let])] = "X"
        p row
      else
        p row
      end
    }
  end


end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end
  
  def call
    letters = ["B", "I", "N", "G", "O"]
    @let = letters.sample
    @num = rand(100)
    p @call = "#{@let}#{@num}"
  end
  
  def check
    key = { "B" => 0, "I" => 1, "N" => 2, "G" => 3, "O" => 4}
    p "Your Board"
    @bingo_board.each { |row|
      if row[(key[@let])] == @num
        row[(key[@let])] = "X"
        p row
      else
        p row
      end}
  end
end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.call
new_game.check
new_game.call
new_game.check
new_game.call
new_game.check
new_game.call
new_game.check
new_game.call
new_game.check
new_game.call
new_game.check
new_game.call
new_game.check
new_game.call
new_game.check
new_game.call
new_game.check
new_game.call
new_game.check

#Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# Didnt like the outline that was provided in the file.  It took things out of order.  I like to think of all of the variables that need to be created and the general tools that will need to be run to accomplish each step

# What are the benefits of using a class for this challenge?
# The instance variables were very important, otherwise you would be left with a very long and convoluted code, and if you want to run it multiple times you would have a hard time doing that without a class

# How can you access coordinates in a nested array?
# You can use array[x][x] but in this case I performed and each on the outer array and then just called the individual value in the nested array

# What methods did you use to access and modify the array?
# Used an each into an if to select values and used a boolean to determine how to modify them

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# I learned of the sample method which picks out a random value in an array.  It takes an array and picks a value at random.

# How did you determine what should be an instance variable versus a local variable?
# I thought out what values would need to be called over multiple methods and made those variables instance variables

# What do you feel is most improved in your refactored solution?
# Cleaned up some indentations and readablity issues