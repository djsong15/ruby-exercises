def caesar_cipher(str, shift)
  res = ''
  str.each_char do |char|
    res += if char.match?(/[A-Z]/)
             ((char.ord - 'A'.ord + shift) % 26 + 'A'.ord).chr
           elsif char.match?(/[a-z]/)
             ((char.ord - 'a'.ord + shift) % 26 + 'a'.ord).chr
           else
             char
           end
  end
  res
end

p caesar_cipher('What a string!', 5)
