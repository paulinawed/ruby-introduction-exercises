
def pesel_validation(pesel)
#pesel.to_s.split(//)
  year= pesel[0] * 10 + pesel[1]
  month= pesel[2] * 10 +pesel[3]

  if month > 80 && month < 93
    year += 1800
  elsif month > 0 && month < 13
    year += 1900

  elsif month > 20 && month < 33
    year += 2000

  elsif month > 40 && month < 53
    year += 2100

  else  month > 60 && month < 73
    year += 2200
  end
  return year
end

def month_pesel (pesel)
  month = 10 *pesel[2]+ pesel[3]

    if month > 0 && month < 13
        month
  	elsif month > 80 && month < 93
          	month -= 80
  	elsif month > 20 && month < 33
  		month -= 20
  	elsif month > 40 && month < 53
  		month -= 40

  	else month > 60 && month < 73
  		month -= 60
  end
return month
end

def birth_pesel(pesel)
  day = 10 * pesel[4] + pesel[5]
  	return day
end

def sex_pesel(pesel)
    if (pesel[9] % 2 == 1)
      puts "Mezczyzna"
  else
    puts"Kobieta"
  end
end

def check_sum (pesel)
  sum = 9 * pesel[0] +  7 * pesel[1] + 3 * pesel[2] + 1 * pesel[3] + 9 * pesel[4] + 7 * pesel[5] + 3 * pesel[6] + 1 * pesel[7] + 9 * pesel[8] + 7 * pesel[9]
	sum %= 10
	if sum == pesel[10]
		 puts "Pesel prawidłowy : #{pesel}"
	else
		puts  "Pesel nieprawidłowy : #{pesel}"
    exit(0)
	end
end

def enter_pesel (n)
 ary =Math.log10(n).floor.downto(0).map { |i| (n / 10**i) % 10 }
  check_sum (ary)
  puts "Informacje o peselu:"
  puts  "płeć "
  puts " #{sex_pesel(ary)} "
  print "Rok : "
  p pesel_validation(ary)
  print "miesiąc : "
  p month_pesel(ary)
  print "dzień : "
  p birth_pesel(ary)
end


puts "write your PESEL"
enter_pesel(gets.to_i)
