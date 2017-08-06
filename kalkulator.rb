def calc (input_number)
  case input_number
    when 1
      add
    when 2
      substract
    when 3
      multiply
    when 4
      divide
    else 5
      quit
  end
end

def add
  p"Enter first number: "
  a = gets.to_i
  p"Enter second number: "
  b = gets.to_i
  sum = a + b
  p "#{a} + #{b} = #{sum}"
end

def substract
  p"Enter first number: "
  a = gets.to_i
  p"Enter second number: "
  b = gets.to_i
  sum = a - b
  p "#{a} - #{b} = #{sum}"
end

def multiply
  p"Enter first number: "
  a = gets.to_i
  p"Enter second number: "
  b = gets.to_i
  sum = a * b
  p "#{a} * #{b} = #{sum}"
end

def divide
  p"Enter first number: "
  a = gets.to_i
  p"Enter second number: "
  b = gets.to_i
  sum = a / b
  p "#{a} / #{b} = #{sum}"
  rescue ZeroDivisionError
  p "#{a} / #{b} = 0"
end

def quit
  p "Bye ,bye"
  exit(0)
end

while true
print "Choose operation:
 1. Add numbers
 2. Subtract numbers
 3. Multiply numbers
 4. Divide numbers
 5. Quit
 What is your choice?:"
calc(gets.to_i)
end
