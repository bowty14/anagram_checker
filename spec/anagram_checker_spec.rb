require ('pry')
require ('rspec')
require ('anagram_checker.rb')

describe('#Anagram')do

  describe('.vowel') do
    it('Will output error message if word is not entered') do
      word = Anagram.new('ggg', 'ttt')
      expect(word.vowel()).to(eq("This is not a word."))
    end
  end
  describe('.vowel') do
    it('Will check to see that what is inputted is a word') do
      word = Anagram.new('below', "elbow")
      expect(word.vowel()).to(eq("This is a word."))
    end
  end

  describe('.ana_checker') do
    it('Will output true if two words are anagrams') do
      anagram = Anagram.new('ruby', 'bury')
      expect(anagram.ana_checker()).to(eq(true))
    end
  end

  describe('.anti_checker') do
    it('Will output true if two word are antigrams') do
      antigram = Anagram.new('cat', 'bat')
      expect(antigram.anti_checker()).to(eq(false))
    end
  end

  describe('.ana_checker') do
    it('Will output true if input is a anagram regardless of capitalization') do 
      cap_anagram = Anagram.new('RubY','BurY')
      expect(cap_anagram.ana_checker()).to(eq(true))
    end
  end

  describe('.ana_checker') do
    it('Will output true if inputted phrases are anagrams') do
      phrase = Anagram.new('Stressed angel','Glean Desserts')
      expect(phrase.ana_checker()).to(eq(true))
    end
  end

  describe('.word_check') do
    it('Will return "These are anangrams" if ana_checker is true') do
      check = Anagram.new('silent','listen')
      expect(check.word_check()).to(eq("These are anagrams, nice work!"))
    end
  end

  describe('.word_check') do
    it('Will return "These words are neither antigrams or anagrams"if anti_checker is true') do
      check = Anagram.new('run','base')
      expect(check.word_check()).to(eq("These words are neither antigrams or anagrams"))
    end
  end

  describe('.word_check') do
    it('Will return "These words share similar letters and could be antigrams." if anti_checker is false') do
      check = Anagram.new('cat','bat')
      expect(check.word_check()).to(eq("These words share similar letters and could be antigrams."))
    end
  end
end