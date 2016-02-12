# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with: Emmett Garber.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array
# Output: Sum of the array elements
# Steps to solve the problem.
# sum=0
# Array.each do |x|
# 	sum+=x
# end

# p sum

# 1. total initial solution

def total(num_Array)
	sum=0
	num_Array.each do |x|
		sum+=x
	end
	p sum
end

# total([1,1,1])
# total([0,0,0])

# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array of strings
# Output: Joined elements/sentence
# Steps to solve the problem.

# set variable to store sentence
# capitalize first letter of first element
# loop through the array, add each element to sentence
# return sentence with period

# 5. sentence_maker initial solution

def sentence_maker(word_Array)
	sentence=""
	word_Array[0].capitalize!

	c=1
	word_Array.each  do |x|
		sentence+="#{x} "
		break if c==(word_Array.count-1)
		c+=1
	end

	sentence+=word_Array[word_Array.count-1]
	p sentence + "."
end

# 6. sentence_maker refactored solution

# def sentence_maker(word_Array)

# 	word_Array[0].capitalize!

# 	sentence=word_Array.join(" ")
# 	p sentence + "."
# end
