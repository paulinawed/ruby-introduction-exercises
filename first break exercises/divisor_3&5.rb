#metoda, która dla podanego argument n znajduje wszystkie liczby całkowite w przedziale od 0 do n, które są podzielne przez 3 lub 5 i zwraca sumę tych liczb.
def multiples(n)
  s=[]
  (0..n).each do |el|
   if el%3==0 || el%5==0
    s<<el
    end
  end
puts s.inject{|acc,el| acc+=el}
end

multiples(gets.to_i)
