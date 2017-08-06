def find_index (array,index)
  if array.index(index) != nil
  puts array.index(index)
  else
  puts "not found"
  end
end
puts find_index([1,2,3,4],gets.to_i)
