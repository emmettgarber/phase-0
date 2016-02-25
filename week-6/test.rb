def cc(number)
  array = number.to_s.chars
  sum_array = Array.new
  split_array = Array.new
  while array.count > 0
    x = array.pop
    y = array.pop
    sum_array << (x.to_i)
    sum_array << (y.to_i * 2)
  end
  p sum_array  
  p split_array
end

cc(1234523648971212)

