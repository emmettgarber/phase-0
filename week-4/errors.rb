
#Which error was the most difficult to read? probably noticing that you needed an extra end in the while loop
#How did you figure out what the issue with the error was? By reading the error type and extra info it is usually pretty easy to summize where the error is.
#Were you able to determine why each error message happened based on the code? Yes by looking at the info and code I was able to figure it out.
#When you encounter errors in your future code, what process will you follow to help you debug? Identify type of error, location and details and deduce from there

# Analyze the Errors

# I worked on this challenge [by myself, ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home." 

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error? errors.rb
#
# 2. What is the line number where the error occurs? 17
#
# 3. What is the type of error message? syntax error, 
#
# 4. What additional information does the interpreter provide about this type of error? unexpected end-of-input, expecting keyword
#
# 5. Where is the error in the code? Missing an end in the method
#
# 6. Why did the interpreter give you this error? Because the while loop wasnt closed
#

# --- error -------------------------------------------------------

south_park = ""

# 1. What is the line number where the error occurs? 36
#
# 2. What is the type of error message? undefined local variable or method 
#
# 3. What additional information does the interpreter provide about this type of error? south_park' for main:Object
#
# 4. Where is the error in the code? there is no = to assign a value to the variable
#
# 5. Why did the interpreter give you this error? Because variables need something assigned to it even if its empty
#

# --- error -------------------------------------------------------

def cartman()
end

# 1. What is the line number where the error occurs? 51
#
# 2. What is the type of error message? NoMethodError
#
# 3. What additional information does the interpreter provide about this type of error? undefined method `cartman' for main:Object
#
# 4. Where is the error in the code? does not have def in front of cartman nor an end to close the method
#
# 5. Why did the interpreter give you this error? Because a method needs to start with def and needs to be closed with an end
#

# --- error -------------------------------------------------------

def cartmans_phrase(a)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs? 67
#
# 2. What is the type of error message? ArgumentError
#
# 3. What additional information does the interpreter provide about this type of error wrong number of arguments (1 for 0)
#
# 4. Where is the error in the code? At the end of cartmans_phrase
#
# 5. Why did the interpreter give you this error? Because you need to give a method a set number of arguements.
#

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("a")

# 1. What is the line number where the error occurs? 90 
#
# 2. What is the type of error message? ArguementError
#
# 3. What additional information does the interpreter provide about this type of error? from errors.rb:90:in `<main>
#
# 4. Where is the error in the code? There is no arguement at the end
#
# 5. Why did the interpreter give you this error? because it needs a number of arguements matching the method
#



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'steve')

# 1. What is the line number where the error occurs? 111
#
# 2. What is the type of error message? ArguementError
#
# 3. What additional information does the interpreter provide about this type of error? in `cartmans_lie': wrong number of arguments
#
# 4. Where is the error in the code? needs a second arguement
#
# 5. Why did the interpreter give you this error? calling the method needs the right number of arguements
#

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs? 126
#
# 2. What is the type of error message? Type error
#
# 3. What additional information does the interpreter provide about this type of error? String can't be coerced into Fixnum
#
# 4. Where is the error in the code? the string needs to come before the integer
#
# 5. Why did the interpreter give you this error? to perform multiplication on a string the string needs to come first
#

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/1


# 1. What is the line number where the error occurs? 141
#
# 2. What is the type of error message? Zerodivisionerror
#
# 3. What additional information does the interpreter provide about this type of error? divided by 0 
#
# 4. Where is the error in the code? cannot divide a number by 0
#
# 5. Why did the interpreter give you this error? Cannot perfrom division with 0 as the divisor
#

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs? 157
#
# 2. What is the type of error message? LoadError
#
# 3. What additional information does the interpreter provide about this type of error? cannot load such file
#
# 4. Where is the error in the code? trying to pull a file that does not exist
#
# 5. Why did the interpreter give you this error? Because there is no file in this folder called cartmans_essay.md, which it needs to complete require_relative
#


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.