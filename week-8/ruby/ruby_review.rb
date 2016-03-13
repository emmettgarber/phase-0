# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode



# Initial Solution

def is_fibonacci?(num)
  fib1 = 0
  fib2 = 1
  while num > fib1
    x = fib1 + fib2
    fib1 = fib2
    fib2 = x
  end
  if num == fib1
    true
  else
    false
  end
end

# Refactored Solution

def is_fibonacci?(num)
  fib1 = 0
  fib2 = 1
  while num > fib1
    x = fib1 + fib2
    fib1 = fib2
    fib2 = x
  end
  (num == fib1)? true: false
end

# Reflection
# What concepts did you review or learn in this challenge?
# Was a good review of while loops.  Had to think hard about how many variables I need and how to set up the 
# formula so that it will return true on 0.

# What is still confusing to you about Ruby?
# Probably the biggest thing is the Attr function.  Really need to get that down for phase1.  I was really busy that week and
# just dont have the conceptual grasp on that that I wish I had.

# What are you going to study to get more prepared for Phase 1?
# Going to go over classes and constructor functions a little more.  Try to study up on Ruby docs for some more tools
# to put in my arsenal.  Want to review some general JS as well.