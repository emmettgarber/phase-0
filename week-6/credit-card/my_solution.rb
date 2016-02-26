# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 digit integer
# Output: true or false
# Steps:
## create a class CreditCard
## define initialize method that returns an error if the input is not equal to 16 digits
## break down integer into each individual number
## double every other number starting with second to last
## while the array is greater than 0
### x = array.pop, y = array.pop
### create new array
## if double digit number, break into two 1 digit numbers
## sum array, if % 10 == 0 
### return true


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#     def initialize(number)
#         array = number.to_s.chars
#         unless array.count == 16
#             raise ArgumentError.new("Credit Card number must be 16 digits")
#         end
#         @array = array
#         p @array
#     end
    
#     def double
#         new_array = Array.new
#         while @array.count > 0
#             x = @array.pop
#             y = @array.pop
#             new_array << x.to_i
#             new_array << (y.to_i * 2)
#         end
#         @new_array = new_array
#         p @new_array
#     end
    
#     def split_number
#         final_array = Array.new
#         @new_array.each { |number|
#             if number < 10
#                 final_array << number
#             else
#               split_array = number.to_s.split(//)
#               split_array.each {
#                 x = split_array.pop
#                 y = split_array.pop
#                 final_array << x.to_i 
#                 final_array << y.to_i }
#             end
#         }
#         @final_array = final_array
#         p @final_array
#     end
    
#   def check_card
#       double
#       split_number
#     if @final_array.inject(0) { | x, y | x + y } % 10 == 0
#         return true
#     else 
#         return false
#     end
#   end

# end

# card = CreditCard.new(4408041234567901)
# card.double
# card.split_number
# card.check_card


# Refactored Solution
class CreditCard
    def initialize(number)
        @array = number.to_s.chars
        unless @array.count == 16
            raise ArgumentError.new("Credit Card number must be 16 digits")
        end
    end
    
    def double
        @new_array = Array.new
        while @array.count > 0
            x = @array.pop
            y = @array.pop
            @new_array << x.to_i
            @new_array << (y.to_i * 2)
        end
    end
    
    def split_number
        final_array = Array.new
        @new_array.each { |number|
            if number < 10
                final_array << number
            else
               split_array = number.to_s.split(//)
               split_array.each {
                x = split_array.pop
                y = split_array.pop
                final_array << x.to_i 
                final_array << y.to_i }
            end}
        @final_array = final_array
    end
    
    def check_card
      double
      split_number
    @final_array.inject(0) { | x, y | x + y } % 10 == 0
    end

end





# Reflection
# What was the most difficult part of this challenge for you and your pair?
# For some reason, we had to call our other methods in our check_card method and we could not figure out why this was the case as we used instance variables.  This is something that will require some more digging.

# What new methods did you find to help you when you refactored?
# We were able to take out a lot of lines by playing with the instance variables, and using booleans. Don't think we used any new code to refactor

# What concepts or learnings were you able to solidify in this challenge?
# Classes and initializing them, cleared up some aspects on inject and split.