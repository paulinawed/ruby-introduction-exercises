#SORTOWANIE BĄBELKOWE

def bubble_sort(value)
  puts "Already sorted :" if value.length <=1
  j = 0
  while j < value.length-1
    0.upto(value.size-2) do |i|
    if value[i] > value[i+1]
      value[i],value[i+1] = value[i+1],value[i]
      i+=1
      end
    end
    j+=1
  end
return value
end

 puts bubble_sort([0,14,5,16,10000,5,33,12])
