class Anagram
  attr_accessor(:word1, :word2)

  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def vowel
    if  @word1.split(//).any?{ |x| ["a", "e", "i", "o", "u"].include?(x)} || @word2.split(//).any?{ |x| ["a", "e", "i", "o", "u"].include?(x)}
      return "This is a word."
    else 
      return "This is not a word."
    end
  end
  def ana_checker
    if @word1.downcase.gsub(/[^a-z0-9]/i, '').split(//).sort == @word2.downcase.gsub(/[^a-z0-9]/i, '').split(//).sort
        true
    else
      false
    end
  end
    
  def anti_checker
    if word1.split('').none? {|x| word2.split('').include?(x)}
    true
    else
      false
    end
  end

  def word_check
    if self.ana_checker == true
      return "These are anagrams, nice work!"
    elsif self.anti_checker == true
      return "These words don't share similar letters and are antigrams."
    elsif self.anti_checker == false
      return "These words are neither antigrams or anagrams."
    end
  end
end

