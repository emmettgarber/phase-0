# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: A solution, and some guesses
# Output: for guess: high low or correct. For solved: true or false
# Steps: Initialize with a new answer and set that as an instance variable. For guessing, if guess is equal to the answer return a new instance variable correct, else if 
# guess is larger than answer retrun high, else return low
# for solved boolean if guess ins variable is equal to correct


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(number)
    if number == @answer
      n = :correct
    elsif number > @answer
      n = :high
    else
      n = :low
    end
    @n = n
  end
  
  def solved?
    @n == :correct
  end
end

game = GuessingGame.new(15)
p game.guess(5)
p game.guess(25)






# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(number)
    if number == @answer
      @n = :correct
    elsif number > @answer
      @n = :high
    else
      @n = :low
    end
  end
  
  def solved?
    @n == :correct
  end
end




# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# They can all use the same variables and adjust things one at a time, sort of the way a factory may make an object, first its put together,
# then its painted, then its packaged, then its examined.

# When should you use instance variables? What do they do for you?
# You should use instance variables when you will need to use or compare a variable accross mutliple methods in the class, as they are rememberd accross multiple methods

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Flow control is the proper organization of processes/methods when you are putting together code.  No there werent any issues with this.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# Well the challenge mentioned memory issues, so symbols are kept steady accross all methods and clases where strings may have more issues.