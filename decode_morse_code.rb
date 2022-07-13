# DECODE ONE CHARACTER (PART I)

def decode_char(char)
  morse_code = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'
  }

  morse_code[char]
end

# DECODE A WORD (PART II)

def decode_word(word)
  word.split.map { |char| decode_char(char) }.join
end

# DECODE FULL MESSAGE (PART III)

def decode_full_message(message)
  message_decoded = ''
  message.split('  ').each do |word|
    message_decoded += "#{decode_word(word)} "
  end
  message_decoded
end

# MORSE INPUT.

puts decode_full_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
