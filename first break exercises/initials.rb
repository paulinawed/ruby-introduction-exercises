#Metoda wypisująca iniciały z imienia i nazwiska

def initials (name)
  init =name.split(' ')
  puts init.first[0].capitalize + init.last[0].capitalize
end

initials(gets.chomp)
