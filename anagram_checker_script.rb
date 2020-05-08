#!/usr/bin/env/ ruby
require('./lib/anagram_checker.rb')

puts "This program is designed to check if two words are either an anagram or an antigram"
puts " "
puts "Plese enter your first word"
word1 = gets.chomp
puts " "
puts "Please enter your second word"
word2 = gets.chomp
puts " "
anagram = Anagram.new(word1, word2)
puts anagram.ana_checker
