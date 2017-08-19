# Załóż, że '#' działa jak klawisz backspace w ciągu znaków. Oznacza to że string "a#bc#d" jest równy "bd".
# "abc#d##c" jest równy "ac" "abc##d######" jest równy "" "######" jest równy ""
# "" jest równy ""
def backspace_string(string)
str = string.split('')
  i=0
    while i<str.size
    if str[i]=="#"
        str.delete_at(i)
         str.delete_at(i-1)
    end
      i+=1
end
      str.delete("#")
puts str
end

backspace_string("ab#d######")
