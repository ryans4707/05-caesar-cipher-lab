$array_abc_low = [*?a..?z]
$array_abc_capital = [*?A..?Z]

def caesar_encode(string, offset)
  string.split("").map do |character|
    if $array_abc_low.include?(character)
      new_character = $array_abc_low[($array_abc_low.index(character)+offset)%26]
      elsif 
      $array_abc_capital.include?(character)
      new_character = $array_abc_capital[($array_abc_capital.index(character)+offset)%26]
      else character
    end
  end.join("")
end

def caesar_decode(string, offset)
  string.split("").map do |character|
    if $array_abc_low.include?(character)
      new_character = $array_abc_low[($array_abc_low.index(character)-offset)%26]
      elsif 
      $array_abc_capital.include?(character)
      new_character = $array_abc_capital[($array_abc_capital.index(character)-offset)%26]
      else character
    end
  end.join("")
end