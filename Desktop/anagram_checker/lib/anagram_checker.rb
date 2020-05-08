class Anagram
  attr_accessor(:word)
  def initialize(word)
  @word = word
  end
  def checker
    if (@word.include(/[A-Z]/i))
      return true
    else 
      return false
    end
end


  #  "abc".match?(/[A-Z]/i)