def english_number(number)
	num_string = ""

	return "Please enter a number that isn't negative." if number < 0
	return "zero" if number == 0

	ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
	tens_place = ["twenty", "thirty", "fourty", "fifty", "sixty", "seven", "eighty", "ninety"]
	teenagers = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

	num_string = num_string + ones_place[number/1000000 - 1] + " million " if number > 999999

	num_string = num_string + ones_place[number % 1000000 /100000 - 1] + " hundred " if number % 1000000 > 99999
	num_string = num_string + tens_place[number % 100000 /10000 - 2] if number % 100000 > 19999
	num_string = num_string + teenagers[number % 100000 /1000 - 10] if number % 100000 > 9999 && number % 100000 < 20000
	num_string = num_string + ones_place[number % 10000 /1000 - 1] if number % 10000 >= 1000 && (number % 100000 > 19999 || number % 100000 < 10000)
	num_string = num_string + " thousand " if number % 100000 > 999

	num_string = num_string + ones_place[number % 1000 /100 - 1] + " hundred " if number % 1000 > 99
	num_string = num_string + tens_place[number % 100 /10 - 2] if number % 100 > 19
	num_string = num_string + teenagers[number % 100 - 10] if number % 100 > 9 && number % 100 < 20
	num_string = num_string + ones_place[number % 10 - 1] if number % 10 >= 1 && (number % 100 > 19 || number % 100 < 10)

	puts num_string
end