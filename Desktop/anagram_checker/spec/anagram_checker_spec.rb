require ('pry')
require ('rspec')
require ('anagram_checker.rb')

describe('Anagram#')do
  it('Will check to see that user input is a word') do
    word = Anagram.new(345)
    expect(word.checker()).to(eq("false"))
  end
end