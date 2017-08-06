#wersja z pętlą while

def sum_numbers(from,n)
i = 1
sum = 0
  while i <= n
    if i%2 ==0
      sum +=i
    end
    i +=1
  end
puts sum
end

sum_numbers(1,gets.to_i)
