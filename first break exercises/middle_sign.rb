#metoda zwracająca srodkowy wyrz ciągu znaków

def middle (str)
 i = str.length/2
 if str.length.even?
   puts str[i]+str[i-1]
 else
  puts str[i]
  end
end

middle(gets.chomp)
