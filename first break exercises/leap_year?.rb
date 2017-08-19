#funkcja, która sprawdza czy rok jest przestępny.
# Rok jest przestępny jeśli:
# - jest podzielny przez 4, ale niepodzielny przez 100
# lub - jest podzielny przez 400

def leap_year?(year)
  if year%4==0 && year%100!=0 || year%400==0
    puts true
  else
    puts false
  end
end

leap_year?(gets.to_i)
