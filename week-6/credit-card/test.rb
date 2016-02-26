def tests(array)
  if array.inject(0) { | x, y | x + y } % 10 == 0
    p "true"
  else
    p "false"
  end
end


tests([1, 0, 9, 4, 1, 6, 0, 1, 4, 6, 2, 2, 4, 0, 8, 0, 4, 8])