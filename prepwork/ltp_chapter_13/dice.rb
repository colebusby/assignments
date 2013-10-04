class Die
	def initialize
		roll
	end

	def roll
		@number_showing = 1 + rand(6)
	end

	def showing
		@number_showing
	end

	def cheat(number)
		if number > 0 && number < 7
			@number_showing = number
		end
	end
end

die = Die.new

puts die.showing
die.roll
puts die.showing
die.cheat(8)
puts die.showing