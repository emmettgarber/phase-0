# Introduction to Inheritance

# I worked on this challenge [by myself, with: ].


# Pseudocode


class JapaneseFood
  def typeoffood
    puts "Japanese"
  end
  
  def umami 
    puts "because its Japanese of course it has Umami flavors"
  end
 
end

class Item < JapanesFood
  def initialize(dish, protein)
    @dish =  dish
    @protein = protein
  end
  
  def whatdoesittastelike
    puts "#{@dish} has a #{@protein}y taste, with #{typeoffood} undertones"


  
    
  
end

addstu = GlobalCohort.new("Tim", "SF", "tim@gmail.com")
addstu.add_student("Jen", "Chi", "jen@aol.com")


# Refactored Solution






# Initial Solution

# class GlobalCohort
#   #your code here

# end

# class LocalCohort
#   #your code here

# end


# Refactored Solution



