def roman_numeral_converter(number)
	converted_string = ""
	converted_string << "M" * (number / 1000)
	converted_string << "D" * ((number % 1000) / 500)
	converted_string << "C" * ((number % 500) / 100)
	converted_string << "L" * ((number % 100) / 50)
	converted_string << "X" * ((number % 50) / 10)
	converted_string << "V" * ((number % 10) / 5)
	converted_string << "I" * (number % 5)
	puts converted_string
end