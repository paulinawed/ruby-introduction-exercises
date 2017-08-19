# funkcja która jako argument przyjmuje tablicę liczb i zwróca sumę wszystkich elementów poza wartością najwyższą i najniższą.
def sum_array(number)
  a= number.inject(0){|acc,el| acc+=el }
  puts a - (number.min + number.max)
end

sum_array([1,2,3,4])
