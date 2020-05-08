require ('pry')
require ('rspec')
require ('anagram_checker.rb')

describe('Anagram#')do
  it('Will check to see that user input is a word') do
    word = Anagram.new('ggg', 'ttt')
    expect(word.vowel()).to(eq("This is not a word"))
  end
end