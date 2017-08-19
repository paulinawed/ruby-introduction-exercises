# #funkcja zaminia cyfry arabskie do 3000 na rzymskie

class Integer

  def to_roman
    roman_arr = {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
    }

    remaining = self
    empty_string = ""
    
    return_value = roman_arr.inject(empty_string) do |result, (arab, roman)|
      [result, arab, roman,remaining.divmod(arab)]
      whole_part, remaining = remaining.divmod(arab)
      result << roman * whole_part
    end

    return return_value

  end
end

puts 5.to_roman
