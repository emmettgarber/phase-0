# Calculate a Grade

# I worked on this challenge [ with: Anna].


# Your Solution Below
def get_grade(a)
  if a >= 90
    return "A"
  elsif a >= 80
    return "B"
  elsif a >= 70
    return "C"
  elsif a >= 60
    return "D"
  else
    return "F"
  end
end

puts get_grade(79)