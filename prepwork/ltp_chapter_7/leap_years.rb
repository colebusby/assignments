puts "Lets find all the leap years between two years of your choice!"
puts "What year would you like to start with?"
start = gets.chomp.to_i
while true
	puts "What year would you like to end with?"
	ending = gets.chomp.to_i
		if ending < start
			puts "Hey! That won't work, the end year has to be bigger than the start year!!!"
		else
			break
		end
end

puts "Here are the leap years for your selected range:"
while start <= ending
	puts start if (start % 4 == 0 && start % 100 != 0) || start % 400 == 0
	start += 1
end