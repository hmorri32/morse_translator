require 'pry'

MORSE = {
  ".-"         => "A",
  "-..."       => "B", 
  "-.-."       => "C", 
  "-.."        => "D", 
  "."          => "E", 
  "..-."       => "F", 
  "--."        => "G", 
  "...."       => "H", 
  ".."         => "I", 
  ".---"       => "J", 
  "-.-"        => "K", 
  ".-.."       => "L", 
  "--"         => "M", 
  "-."         => "N", 
  "---"        => "O", 
  ".--."       => "P", 
  "--.-"       => "Q", 
  ".-."        => "R", 
  "..."        => "S", 
  "-"          => "T", 
  "..-"        => "U", 
  "...-"       => "V", 
  ".--"        => "W", 
  "-..-"       => "X", 
  "-.--"       => "Y", 
  "--.."       => "Z", 
  "-----"      => "0", 
  ".----"      => "1", 
  "..---"      => "2", 
  "...--"      => "3", 
  "....-"      => "4", 
  "....."      => "5", 
  "-...."      => "6", 
  "--..."      => "7", 
  "---.."      => "8", 
  "----."      => "9", 
  ".-.-.-"     => ".", 
  "--..--"     => ",", 
  "..--.."     => "?", 
  ".----."     => "'", 
  "-.-.--"     => "!", 
  "-..-."      => "/", 
  "-.--."      => "(", 
  "-.--.-"     => ")", 
  ".-..."      => "&", 
  "---..."     => "=>", 
  "-.-.-."     => ";", 
  "-...-"      => "=", 
  ".-.-."      => "+", 
  "-....-"     => "-", 
  "..--.-"     => "_", 
  ".-..-."     => "\"",
   "...-..-"   => "$", 
   ".--.-."    => "@", 
   "...---..." => "SOS"
}

class Translator
  def eng_morse(string)
    letters = string.split('')
    letters.map { |character| MORSE.key character.upcase }.join(' ')
  end

  def morse_eng(morse)
    word   = morse.strip.split("   ")
    mapped = word.map do |word|
      word.split(" ").map do |character|
        MORSE[character]
      end
      .join
    end
    mapped.join(' ')
  end
end