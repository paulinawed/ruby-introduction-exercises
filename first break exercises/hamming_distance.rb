#metoda zwraca odległość Hamminga,(miara odmienności dwóch ciągów o takiej samej długości) jeśli podane stringi nie są tej samej długości  zwróca nil.

def hamming_distance(string_1,string_2)
  str1 = string_1.split('')
  str2 = string_2.split('')
  hamming_count = 0
  if string_1.size == string_2.size
    str1.each_index do |i|
    hamming_count +=1 if str1.values_at(i) != str2.values_at(i)
    end
  else
    return "The strings must be equal size"
  end
  hamming_count
end

 p hamming_distance('GAGCCT', 'CATCGT')
