def decode_character(char)
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
  codes[char]
end

def decode_word(word)
  word.split.map { |char| decode_character(char) }.join
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
