def caesar_cipher(string, increment = 0)
  lower_case = ('a'..'z').to_a
  upper_case = ('A'..'Z').to_a
  result = ''

  string.each_char do |char|
    if lower_case.include?(char)
      new_char = lower_case[(lower_case.index(char) + increment) % 26]
      result += new_char
    elsif upper_case.include?(char)
      new_char = upper_case[(upper_case.index(char) + increment) % 26]
      result += new_char
    else
      result += char
    end
  end
  result
end

def decrypt_cipher(string, increment)
  lower_case = ('a'..'z').to_a
  upper_case = ('A'..'Z').to_a
  result = ''

  string.each_char do |char|
    if lower_case.include?(char)
      new_char = lower_case[(lower_case.index(char) - increment) % 26]
      result += new_char
    elsif upper_case.include?(char)
      new_char = upper_case[(upper_case.index(char) - increment) % 26]
      result += new_char
    else
      result += char
    end
  end
  result
end

increment = 7
cypher = caesar_cipher("What would YOu do if i weren't a Woman?", increment)
p cypher
p decrypt_cipher(cypher, increment)
