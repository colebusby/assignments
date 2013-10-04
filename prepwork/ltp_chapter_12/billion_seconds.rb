def english_number(number)
	num_string = []

	return "Please enter a number that isn't negative." if number < 0
	return "zero" if number == 0

	ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
	tens_place = ["twenty", "thirty", "fourty", "fifty", "sixty", "seven", "eighty", "ninety"]
	teenagers = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
	magnitude = ["thousand", "million", "billion", "trillion", "quadrillion"]

	i = ((number.to_s.length+2)/3) * 3

	until i == 0
		num_string << ones_place[number % "1#{"0" * i}".to_i / "1#{"0" * (i-1)}".to_i - 1] + " hundred" if number % "1#{"0" * i}".to_i > "#{"9" * (i-1)}".to_i
		num_string << tens_place[number % "1#{"0" * (i-1)}".to_i / "1#{"0" * (i-2)}".to_i - 2] if number % "1#{"0" * (i-1)}".to_i > "1#{"9" * (i-2)}".to_i
		num_string << teenagers[number % "1#{"0" * (i-1)}".to_i / "1#{"0" * (i-3)}".to_i - 10] if number % "1#{"0" * (i-1)}".to_i > "#{"9" * (i-2)}".to_i && number % "1#{"0" * (i-1)}".to_i < "2#{"0" * (i-2)}".to_i
		num_string << ones_place[number % "1#{"0" * (i-2)}".to_i / "1#{"0" * (i-3)}".to_i - 1] if number % "1#{"0" * (i-2)}".to_i >= "1#{"0" * (i-3)}".to_i && (number % "1#{"0" * (i-1)}".to_i > "1#{"9" * (i-2)}".to_i || number % "1#{"0" * (i-1)}".to_i < "1#{"0" * (i-2)}".to_i)
		num_string << magnitude[i / 3 - 2] if i > 3 && magnitude.include?(num_string.last) == false
		i -= 3
	end

	num_string.join(" ")
end

months = {"january" => 1, "feburary" => 2, "march" => 3, "april" => 4, "may" => 5, "june" => 6, "july" => 7, "august" => 8, "september" => 9, "october" => 10, "november" => 11, "december" => 12}

puts "What year were you born?"
puts
year = gets.chomp
puts
puts "In what month were you born?"
puts
month = gets.chomp
month = months["#{month.downcase}"].to_s if months.has_key?(month.downcase)
puts
puts "On what day were you born?"
puts
day = gets.chomp
puts
puts "What was the hour you were born?"
puts
hour = gets.chomp
puts
puts "What was the minute you were born?"
puts
minute = gets.chomp
puts
puts "What was the second you were born?"
puts
second = gets.chomp
puts

born = Time.local(year, month, day, hour, minute, second)
now = Time.new

puts "Wow!!! you are #{english_number((now - born).to_i)} seconds old!"