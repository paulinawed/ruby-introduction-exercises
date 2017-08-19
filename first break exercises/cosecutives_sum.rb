#funkcję consecutives_sum, która dla otrzymanej tablicy liczb obliczy sumę kolejnych liczb o tej samej wartości.
#Funkcja zwraca tablice tych sum.

def consecutives_sum(array)
i=0
arr=[]
sum =0
while i<array.size
if array[i]==array[i+1]
 sum =array[i]+array[i+1]
  arr<< sum

else
  arr<<array[i]

end
i+=1
  end
puts arr
  # array.inject(0){|acc,el| acc+=el }
end

consecutives_sum([1, 4, 4, 4, 0, 4, 3, 3, 1])
