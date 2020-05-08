require ('pry')
require ('rspec')
require ('anagram_checker.rb')

describe('Anagram#')do
  it('Will output error message if word is not entered') do
    word = Anagram.new('ggg', 'ttt')
    expect(word.vowel()).to(eq("This is not a word, ignore the prompt below!"))
  end

  it('Will check to see that what is inputted is a word') do
    word = Anagram.new('below', "elbow")
    expect(word.vowel()).to(eq("This is a word."))
  end

  it('Will check to see if two words are anagrams') do
    anagram = Anagram.new('ruby', 'bury')
    expect(anagram.ana_checker()).to(eq("This is an anagram, nice work!"))
  end

  it('Will check to see if two word are not anagrams') do
    antigram = Anagram.new('hi', 'bye')
    expect(antigram.ana_checker()).to(eq("These two words have no matching letters and are therefore antigrams"))
  end

  it('Will check if input is a anagram regardless of capitalization') do 
    cap_anagram = Anagram.new('RubY','BurY')
    expect(cap_anagram.ana_checker()).to(eq("This is an anagram, nice work!"))
  end

  it('Will check if inputted phrases are anagrams') do 
    phrase = Anagram.new('Stressed angel','Glean Desserts')
    expect(phrase.ana_checker()).to(eq("This is an anagram, nice work!"))
  end
end