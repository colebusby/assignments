def shuffle_arr(array)
	shuffled_arr = []
	unused = []
	i = 0
	i2 = 0

	array.each do |word|
		shuffled_arr[rand(array.count)] = word
	end

	while i < array.count
		unused << array[i] if shuffled_arr.index(array[i]) == nil
		i += 1
	end

	while i2 < array.count
		shuffled_arr[i2] = unused.pop if shuffled_arr[i2] == nil
		i2 += 1
	end

	puts shuffled_arr	
end