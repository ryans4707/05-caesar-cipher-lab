$array_abc_low = [*?a..?z]
$array_abc_up = [*?A..?Z]

def caesar_encode(string, offset)
  string.split("").map do |character|
    if $array_abc_low.include?(character)
      new_character = $array_abc_low[($array_abc_low.index(character)+offset)%26]
      elsif 
      $array_abc_up.include?(character)
      new_character = $array_abc_up[($array_abc_up.index(character)+offset)%26]
      else character
    end
  end.join("")
end

puts caesar_encode("abc",3)