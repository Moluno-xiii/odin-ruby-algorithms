def substrings(string, dictionary)
  new_hash = Hash.new(0)
  string_arr = string.downcase.split()

  dictionary.each do |word|
    string_arr.each do |letter|
      if (letter.include?(word.downcase))
        new_hash[word] += 1
        p "#{letter} contains #{word}"
      end
    end
  end

return new_hash
end


# Dictionary should contain unique values, no two values should appear twice
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
string = "Howdy partner, sit down! How's it going?"
puts substrings(string, dictionary)