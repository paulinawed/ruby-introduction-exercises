#funkcja, która wypisuje, który z graczy wygrywa w grze papier, kamień,norzyce
def rps(choice_1)
  case choice_1
    when 1
      paper
    when 2
      scissors
    when 3
      rock
    when 4
      exit(0)
  end
end

def paper
    p"Player 2 turn"
  choice_2 =gets.to_i
  if choice_2 ==2
    puts "----PLAYER 2 WON----!!"
  elsif choice_2 ==3
    puts "----PLAYER 1 WON!!----"
  else
    puts "----Remis----"
  end
end

def scissors
  p"Player 2 turn"
  choice_2 =gets.to_i
  if choice_2 ==3
    puts "----PLAYER 2 WON----!!"
  elsif choice_2 ==1
    puts "----PLAYER 1 WON!!----"
  else
    puts "----Remis----"
  end
end

def rock
  p"Player 2 turn"
  choice_2 =gets.to_i
  if choice_2 ==1
    puts "----PLAYER 2 WON----!!"
  elsif choice_2 ==2
    puts "----PLAYER 1 WON!!----"
  else
    puts "----Remis----"
  end
end


while true
puts "Choose weapon:
 1. paper
 2. scissors
 3. rock
 4.quit
 What is your choice?:"
rps(gets.to_i)
end
