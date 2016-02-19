def array(text)
  text_split = text.split
  list = Hash.new
  text_split.each do |x|
    list[x] = 1
  end
  list["boy"] = 2
end

def remove(a)
  list = Hash.new
  list = array()
  list.delete(a)
  p list
end

array("The boy went to the store")
remove("the")
