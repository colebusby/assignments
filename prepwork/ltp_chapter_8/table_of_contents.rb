title = "Table of Contents"
contents_array = [["Chapter 1: Getting Started", "page  1"], ["Chapter 2: Numbers", "Page  9"], ["Chapter 3: Letters", "Page 13"]]

puts title.center(60)
contents_array.each do |content|
	print content[0].ljust(30)
	print content[1].rjust(30)
	puts
end