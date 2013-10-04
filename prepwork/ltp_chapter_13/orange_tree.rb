class Orange_tree

	def initialize
		@age = 0
		@how_tall = 0
		@fruit = 0
	end

	def height
		puts "Your orange tree is #{@how_tall} feet tall"
	end

	def one_year_passes

		# Age

		if @age < 20
			@age += 1
		else
			puts "Your orange tree has served you well over these years and produced many wonderful oranges."
			puts "Sadly, all things must come to an end."
			puts "Your orange tree withers and dies."
			exit
		end
		puts "Your orange tree is now #{@age} years old."
		puts

		# Height

		@how_tall = @age * 2 if @how_tall < 12
		puts "Your orange tree is #{@how_tall} feet tall."
		puts

		# Number of oranges produced

		if @age <= 3
			puts "Your orange tree is too young to produce fruit. Come back and check again next year."
		elsif @age > 3 && @age <= 15
			@fruit = Math.sqrt(@age * 100).to_i
			puts "Your orange tree has produced #{@fruit} oranges this year."
		elsif @age > 15
			@fruit = Math.sqrt((30 - @age) * 100).to_i
			puts "Your orange tree has produced #{@fruit} oranges this year."
		end
	end

	def count_the_oranges
		puts "Your orange tree currently has #{@fruit} oranges."
	end

	def pick_an_orange
		if @fruit > 0
			@fruit -= 1
			puts "That was one tasty orange!"
		else
			puts "There are no oranges for you to pick. Maybe next year your tree will produce more oranges."
		end
	end
end

puts "Congratulations!!! You have a new orange tree!"
puts "Give it time and it should produce many oranges for you."
@tree = Orange_tree.new

@methods = {"check height" => :height, "count oranges" => :count_the_oranges, "pick orange" => :pick_an_orange, "one year passes" => :one_year_passes}

def method_dispatch	
	@tree.send(@methods[@action])
end

def question(string)
	puts
	puts string
	puts "Your options are: 'check height', 'count oranges', 'pick orange', 'one year passes'"
	@action = gets.chomp
	puts
end

while true
	question("What would you like to do with your tree?")
	if @methods.has_key?(@action)
		method_dispatch
	else
		question("Please choose an available option:")
	end
end