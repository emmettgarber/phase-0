puts "What's your first name?"
  f_name = gets.chomp
puts "What's your middle name?"
  m_name = gets.chomp
puts "What's your last name?"
  l_name = gets.chomp
puts "Nice to meet you #{f_name} #{m_name} #{l_name}!"
puts "What is your favorite number #{f_name}?"
number = gets.chomp
puts "Well, #{number} is a great number, but isn't #{number.to_i + 1} better?  It is bigger!"


#How do you define a local variable?
#You type a lowercase variable that you want to define and then the = symbol.  For instance "testvariable = "dog""

#How do you define a method?
#You use def, then the method name, then in parenthesis however many arguments you want.  For instance def method(a, y).

#What is the difference between a local variable and a method?
#A local variable is a value set by the user, the method carries out a command using the arguements provided.

#How do you run a ruby program from the command line?
#While in the directory with the ruby file you want to run type: ruby ruby_program_name.rb

#How do you run an RSpec file from the command line?
#While in the directory with the spec file you want to run type: rspec spec_file_you_want_to_run.rb

#What was confusing about this material? What made sense?
#Nothing was too confusing.  It was cool to interact with the spec files to help you figure out any errors you may have made.  
#It is a good way of learning to analyze your own code and see the weaknesses there.

#math https://github.com/emmettgarber/phase-0/blob/master/week-4/math/simple-string.rb
#address https://github.com/emmettgarber/phase-0/blob/master/week-4/address/simple-string.rb

