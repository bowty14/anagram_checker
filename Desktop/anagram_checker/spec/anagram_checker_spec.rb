require ('pry')
require ('rspec')
require ('anagram_checker.rb')

describe('Anagram#')do
  it('Will check to see that user input is a word') do
    word = Anagram.new('ggg', 'ttt')
    expect(word.vowel()).to(eq("This is not a word"))
  end

  it('Will check to see if two words are anagrams') do
    anagram = Anagram.new('ruby', 'bury')
    expect(anagram.ana_checker()).to(eq("This is an anagram, nice work!"))
  end

  it('Will check to see if two word are not anagrams') do
    not_anagram = Anagram.new('hi', 'bye')
    expect(not_anagram.ana_checker()).to(eq("This is not an anagram, please try again"))
  end
  it('Will check if input is a anagram regardless of capitalization') do 
    cap_anagram = Anagram.new('RubY','BurY')
    expect(cap_anagram.ana_checker()).to(eq("This is an"))
  end
end