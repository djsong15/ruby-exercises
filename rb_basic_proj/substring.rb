# frozen_string_literal: true

def substrings(string, dict)
  res = Hash.new(0)
  str = string.downcase.strip
  dict.each do |substr|
    sub_i = 0
    str_i = 0
    while str_i < str.length
      if str[str_i] == substr[sub_i]
        sub_i += 1
      else
        sub_i = 0
      end
      str_i += 1
      if sub_i == substr.length
        res[substr] += 1
        sub_i = 0
      end
    end
  end
  res
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
p substrings('below', dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
