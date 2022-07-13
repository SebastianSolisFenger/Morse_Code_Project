# DECODE ONE CHARACTER (PART I)

def decode_char(char)
  morse_code = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'
  }

  morse_code.each do |key, value|
    return value if key == char
  end
end

# DECODE A WORD (PART II)

def decode_word(word)
  word_decoded = ''
  word.split.each do |letter|
    word_decoded += decode_char(letter)
  end
  word_decoded
end

# DECODE FULL MESSAGE (PART III)

def decode_full_message(message)
  message_decoded = ''
  message.split('  ').each do |messages|
    message_decoded += "#{decode_word(messages)} "
  end
  message_decoded
end

# MORSE INPUT

puts decode_full_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
