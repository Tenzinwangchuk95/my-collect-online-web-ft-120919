def my_collect(array)
  if block_given?
    empty_array = []
    counter = 0 
    while counter < array.length 
      empty_array << yield(array[counter])
      counter += 1
    end
  else
    return 0
  end
  return empty_array
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end