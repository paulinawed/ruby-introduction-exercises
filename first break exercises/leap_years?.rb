#uzywając funkcję leap_year? z zadania ‘leap_year?’ napisz funkcję ‘leap_years’, która otrzymuje tablicę liczb całkowitych, każda liczba reprezentuje rok i zwraca tablicę tylko z liczbami reprezentującymi rok przestępny.

def leap_years?(year)
  year.each do |x|
    if x%4==0 && x%100!=0 || x%400==0
    puts x
    end
  end
end

leap_years?((2000..2100).to_a)
