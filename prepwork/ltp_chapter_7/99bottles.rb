i = 99
container = "bottles"
while i >= 1
	puts "#{i} #{container} of beer on the wall!"
	puts "#{i} #{container} of beer!"
	puts "Take one down, pass it around,"
	container = "bottle" if i - 1 < 2
	if i - 1 == 0
		puts "No bottles of beer on the wall!"
	else
		puts "#{i - 1} #{container} of beer on the wall!"
	end
	puts
	i -= 1
end