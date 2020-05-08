require ('anagram_checker.rb')
require ('pry')
require ('rspec')

describe('Anagram#')do
  it('Will check to see that user input is a word') do
    word = Anagram.new(345)
    expect(word.checker()).to(eq("That is not a word."))
  end
end