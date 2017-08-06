def euklides (a,b,c = 0)
  if a == b
    print "Wynik: #{a} " if c == 1
  end
  while a != b
    if a > b
      a = a - b
    else
      b = b - a
    end
  end
return " NWD = #{a} "
end

puts euklides(gets.to_i,gets.to_i)
