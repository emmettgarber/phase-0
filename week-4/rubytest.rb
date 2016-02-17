def pad!(array, min_size, value = nil) #destructive
  if array.count >= min_size
    return array
  else
    (min_size - array.count).times do
      array << value
    end
    return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = Array.new(array)
    (min_size - array.count).times do
      new_array << value
  end
  return new_array
end