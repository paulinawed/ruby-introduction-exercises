#funkcji decode_morse, która dla otrzymanego kodu, zwórca jego odszyfrowaną wersję.

def decode_morse(morseCode)
  morse_dict = {
  	"a" => ".-",
  	"b" => "-...",
  	"c" => "-.-.",
  	"d" => "-..",
  	"e" => ".",
  	"f" => "..-.",
  	"g" => "--.",
  	"h" => "....",
  	"i" => "..",
  	"j" => ".---",
  	"k" => "-.-",
  	"l" => ".-..",
  	"m" => "--",
  	"n" => "-.",
  	"o" => "---",
  	"p" => ".--.",
  	"q" => "--.-",
  	"r" => ".-.",
  	"s" => "...",
  	"t" => "-",
  	"u" => "..-",
  	"v" => "...-",
  	"w" => ".--",
  	"x" => "-..-",
  	"y" => "-.--",
  	"z" => "--..",
  	" " => " ",
  	"1" => ".----",
  	"2" => "..---",
  	"3" => "...--",
  	"4" => "....-",
  	"5" => ".....",
  	"6" => "-....",
  	"7" => "--...",
  	"8" => "---..",
  	"9" => "----.",
  	"0" => "-----"
  }

  list = morseCode.split(" ")
  list.each do |word|
     result=morse_dict.key(word)
    print result
   end
end

decode_morse('.... . .-.. .-.. --- .-- --- .-. .-.. -..')
