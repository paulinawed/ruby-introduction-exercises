#funkcja przyjmuje liczbe i zamienia jej cyfry tak by utworzyć najwyższą wartośc

def highest_number(number)
  n=number.to_s.split('')
  n.each_slice(1).to_a
  j=0
  i=0
  while j < n.length-1
    0.upto(n.size-2) do |i|
    if n[i] < n[i+1]
      n[i],n[i+1] = n[i+1],n[i]
      i+=1
      end
    end
    j+=1
  end
puts n.join.to_i
end

highest_number(gets.to_i)
