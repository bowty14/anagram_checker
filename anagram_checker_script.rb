#!/usr/bin/env/ ruby
require('./lib/anagram_checker.rb')
require('lolize/auto')

puts "This program checks to see if two words are either an anagram or an antigram"
puts " "
puts "Plese enter your first word"
word1 = gets.chomp
puts " "
puts "Please enter your second word"
word2 = gets.chomp
puts " "
anagram = Anagram.new(word1, word2)
puts anagram.vowel
puts ' '
puts anagram.ana_checker


