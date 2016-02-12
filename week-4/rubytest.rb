def factorial(number)
  if number == 0 
    return 1
 else 
   number*factorial(number-1)
  end
end

p factorial(0)