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
end