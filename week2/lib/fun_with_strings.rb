module FunWithStrings
  
  def palindrome?
    # your code here
    word = self.gsub(/(\W|\d)/, "").downcase
    word == word.reverse
  end
  
  def count_words
    # your code here
    words_hash = Hash.new
    self.downcase.gsub(/(\W|\d)/, " ").split.each do |word|
      words_hash[word] = words_hash.fetch(word, 0) + 1
    end
    return words_hash
  end
  
  def anagram_groups
    # your code here
    self.split.group_by{ |word| word.chars.sort }.values
  end

end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
