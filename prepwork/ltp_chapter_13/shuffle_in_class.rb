class Array
	def shuffle
		shuffled_arr = []
		unused = []
		i = 0
		i2 = 0

		self.each do |word|
			shuffled_arr[rand(self.count)] = word
		end

		while i < self.count
			unused << self[i] if shuffled_arr.index(self[i]) == nil
			i += 1
		end

		while i2 < self.count
			shuffled_arr[i2] = unused.pop if shuffled_arr[i2] == nil
			i2 += 1
		end
		shuffled_arr
	end
end

arr = [1,2,3,4,5,6,7,8,9]
puts arr.shuffle