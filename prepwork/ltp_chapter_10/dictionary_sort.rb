def word_sort(new_word, smallest)
index = 0
	while true
		return false if new_word == smallest
		return false if smallest[index] == nil
		return true if new_word[index] == nil
		return true if new_word[index] < smallest[index]
		return false if new_word[index] > smallest[index]
		index += 1 if new_word[index] == smallest[index]
	end
end

def array_sort(unsorted_array)
	sorted_array = []
	until unsorted_array == []
		i = 1
		smallest = unsorted_array[0]
		while i < unsorted_array.count
			smallest = unsorted_array[i] if word_sort(unsorted_array[i].downcase, smallest.downcase) == true
			i += 1
		end
		sorted_array << smallest
		unsorted_array.slice!(unsorted_array.index(smallest))
	end
	puts sorted_array
end