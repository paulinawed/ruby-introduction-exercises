#metoda obliczająca ilosc samogłosek w podanym wyrazie

def vowel_count(name)
  puts name.scan(/[aeouiy]/).count
end

vowel_count(gets.chomp)
