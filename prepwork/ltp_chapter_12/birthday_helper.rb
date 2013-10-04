birthdays = File.read('birthday_list.txt')
months = {"jan" => 1, "feb" => 2, "mar" => 3, "apr" => 4, "may" => 5, "jun" => 6, "jul" => 7, "aug" => 8, "sep" => 9, "oct" => 10, "nov" => 11, "dec" => 12}

birthday_hash = Hash.new
birthday_age = Hash.new

birthdays.each_line do |line|
	arr = line.split(" ")
	year = arr.pop
	day = arr.pop.chop
	month = arr.pop
	name = arr.join(" ").chop
	age = (Time.new - Time.local(year, months[month.downcase], day)).to_i / 60 / 60 / 24 / 365
	birthday_hash[name] = "#{month} #{day}, #{year}"
	birthday_age[name] = age
end

def question(string)
	puts string
	@answer = gets.chomp
end
question("Whose birthday would you like to find?")
if birthday_hash.has_key?(@answer) == false
	puts
	puts "That name is not part of the Birthday List."
	question("Please enter a name from the list:")
end
puts
puts "#{@answer}'s birthday is #{birthday_hash[@answer]}"
puts "#{@answer} is #{birthday_age[@answer]} years old."