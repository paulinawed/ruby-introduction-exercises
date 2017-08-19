#funkcja liczaca ilość wystąpień poszczególnych słów w zadanym jako argument stringu.
def word_count(string)
  str = string.downcase.split(' ')
  b = str.group_by{|x| x}.values
  a = b.each{ |x| puts "#{x} => #{x.size}" }
end

word_count('Losowy ciąg znaków ciąg')
