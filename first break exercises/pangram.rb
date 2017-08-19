# encoding: UTF-8
# metoda sprawdza czy ciag jest pangramem czyli zdaniem, w którym przynajmniej raz pojawia się każda litera alfabetu

def pangram?(sentence)
  str = ("a".."z").to_a - sentence.chars.to_a
  str.empty?
end

p pangram?('The quick brown fox jumps over the lazy dog.')
