puts "Please type a word followed by the Enter key."
puts "Continue entering words as long as you like."
puts "When you have finished entering words, press Enter one more time."
word_array = []

while true
	word = gets.chomp
	break if word == ""
	word_array << word
end

puts "Here are the words you typed in, placed in alphabetical order:"
puts word_array.sort