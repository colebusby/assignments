talk_response = ["HUH?! SPEAK UP, SONNY", "CAN'T UNDERSTAND YA THROUGH ALL THAT MUMBLING!", "STOP WHISPERING, WOULD YA?!"]
question = ""

puts "HELLO THERE SONNY, THANKS FOR COMING TO TALK WITH YOUR DEAR SWEET GRANDMA"
puts
while true
	puts "WHAT WOULD YOU LIKE TO ASK YOUR SWEET GRANDMA-MA?"
	question = gets.chomp
	if question == "BYE"
		break
	elsif question == question.upcase
		puts "NO, NOT SINCE #{rand(21) + 1930}"
	else
		puts talk_response[rand(3)]
	end
end
puts
puts "THANKS FOR VISITING, YOU TAKE CARE SONNY!"