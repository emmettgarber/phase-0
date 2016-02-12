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