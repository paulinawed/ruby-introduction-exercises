#Sito Eratostenesa
#-- Użytkownik może wczytać  dowolny zakres liczb , nie koniecznie zaczynając od 2 do n

def eratostenes(a,b)
  array =(a..b).to_a
  prime=[]
  array.delete(0)
  array.delete(1)

  if array[0]!=2
    prime << 2
    while array.length > 0
      array.delete_if {|x| x % prime.last == 0}
      prime << array.first
    end
    puts "-------"
    puts prime [1..-1]
  else
    while array.length > 0
      prime << array.first
      array.delete_if {|x| x % prime.last == 0}
    end
  puts "-------"
  puts prime
  end
end

puts eratostenes(gets.to_i,gets.to_i)
