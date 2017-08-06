def sequence (n)
  a = 1
  b = 0
  i = 0
  while i < n
    puts b
    a , b = b, a+b
    i+=1
  end
end

sequence(gets.to_i)
