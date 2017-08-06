# wersja z range_step
def number_sum_range (n)
  sum = 0
  (0..n).step(2) {|e| sum+=e  }
  puts sum
end

number_sum_range(gets.to_i)
