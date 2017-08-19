#funkcja zwraca przeciwne wartosci otrzymanej tablicy
def invert_array(arr)
  arr.each{|w| puts w*(-1)}
end

invert_array([1, -2, 3, -4, 5])
