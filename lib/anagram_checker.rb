class Anagram
  attr_accessor(:word1, :word2)

  def initialize(word1, word2)
    @word1 = word1.downcase.gsub(/[^a-z0-9]/i, '').split(//).sort
    @word2 = word2.downcase.gsub(/[^a-z0-9]/i, '').split(//).sort
  end

  def vowel
    if  @word1.any?{ |x| ["a", "e", "i", "o", "u"].include?(x)} || @word2.any?{ |x| ["a", "e", "i", "o", "u"].include?(x)}
      return "This is a word."
    else 
      return "This is not a word"
    end
  end
  def ana_checker
    if @word1 == @word2
      return "This is an anagram, nice work!"
    end
    return "These two words have no matching letters and are therefore antigrams"
  end
end


 
