Dir.chdir 'C:/Users/Ruby/Tealeaf/prepwork/Renamed Photos'

pic_names = Dir['C:/Users/Ruby/Tealeaf/prepwork/Photos/*.jpg']

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts
print "Downloading #{pic_names.count} files:"

pic_number = 1

pic_names.each do |name|
	print "."
	new_name = pic_number < 10 ? "#{batch_name}0#{pic_number}.jpg" : "#{batch_name}#{pic_number}.jpg"
	if File.exist?(new_name)
		puts
		puts "#{new_name} already exists, process has been terminated so no files are overwritten."
		exit
	end
	File.rename name, new_name
	pic_number += 1
end

puts
puts "File transfer complete."