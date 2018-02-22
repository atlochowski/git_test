def cipher(strings, num)

arr = []
strings.each_char { |n| arr << n.ord}


arr.each do |n|
	
	if (97..122).include?(n)
		n > 122 - num ? n = 96 + (num - (122 - n)) : n += num
	elsif (60..90).include?(n)
		n > 90 - num ? n = 64 + (num - (90 - n)) : n += num
	else
		n
	end

	letter = n.chr
	print letter
	
end
end

cipher("What a string!", 5)
