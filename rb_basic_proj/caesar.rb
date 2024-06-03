def caesar_cipher(str, shift)
  res = ''
  str.split('').each do |char|
    if char.match?(/[[:alpha:]]/)
      curCharNum = char.downcase.ord
      newCharNum = curCharNum + shift
      newCharNum -= 'z'.ord - curCharNum < shift ? 26 : 0
      if char.ord <= 'Z'.ord
        res += newCharNum.chr.upcase
      else
        res += newCharNum.chr
      end
    else
      res += char
    end
  end
  res
end

p caesar_cipher("What a string!", 5)