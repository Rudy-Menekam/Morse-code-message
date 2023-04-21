require 'pry'

@alphabets = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '-..-' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_char(string)
  @alphabets[string]
end

def decode_word(word)
  word.split(/ /).map { |letter| decode_char letter }.join
end

def decode_sentence(sentence)
  sentence.split(/  /).map { |word| decode_word word }.join(' ')
end

puts decode_char('.-')
puts decode_word('-- -.--')
puts decode_sentence('-- -.--   -. .- -- .')
puts decode_sentence('.- -... --- -..- ..-. ..- .-.. .-.. --- ..-. .-. ..- -... .. . ...')
binding.pry