def substrings(string, dict)
  res = Hash.new(0)
  str = string.downcase.strip
  dict.each do |substr|
    sub_i, str_i = 0, 0
    while str_i < str.length
      if str[str_i] == substr[sub_i]
        str_i += 1
        sub_i += 1
      else
        str_i += 1
        sub_i = 0
      end
      if sub_i == substr.length
        res[substr] += 1
        sub_i = 0
      end
    end
  end
  res
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
