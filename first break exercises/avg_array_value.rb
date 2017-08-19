#funkcja która przyjmie dowolną liczbę tablic (o tej samej długości) i zwraca jedną tablicę składającą się z wartości średnich elementów na poszczególnych indeksach przyjętych tablic
def avg_array(*arr)
  a = arr.transpose.map { |x| x.inject { |sum, n| (sum + n) }}
  b = a.map{ |x| x.to_f / arr.size }
  puts b
end

avg_array([1, 5, 3, 22], [12, 22, 13, 5], [5, 12, 24, 5], [14, 40, 5, 17])
