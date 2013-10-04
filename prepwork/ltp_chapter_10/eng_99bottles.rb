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


i = 9999
container = "bottles"
while i >= 1
	puts "#{english_number(i)} #{container} of beer on the wall!"
	puts "#{english_number(i)} #{container} of beer!"
	puts "Take one down, pass it around,"
	container = "bottle" if i - 1 < 2
	if i - 1 == 0
		puts "No bottles of beer on the wall!"
	else
		puts "#{english_number(i - 1)} #{container} of beer on the wall!"
	end
	puts
	i -= 1
end