def decode_character(character)
  codes = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z', '.----' => '1', '..---' => '2', '...--' => '3',
    '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7',
    '---..' => '8', '----.' => '9', '-----' => '0'
  }
  codes[character]
end

def decode_word(word)
  result = word.split.map { |character| decode_character(character) }.join
  result
end

def decode_code(code)
  result = ''
  code.split(/   /).each { |word| result += "#{decode_word(word.strip)} " }
  p result.chop
end

decode_code('.-') 
decode_code('-- -.--') 
decode_code('-- -.-- -. .- -- .') 
decode_code('.- -... --- -..- ..-. ..- .-.. .-.. --- ..-. .-. ..- -... .. . ...') 

