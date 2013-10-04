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
born = Time.local(year, month, day)
now = Time.new

age = (now - born).to_i / 60 / 60 / 24 / 365

age.times do
	puts "!!! SPANK !!!"
	puts
end

puts "There are your #{age} Birthday Spanks!"