def substrings(substring, dictionary)
	count = Hash.new(0)
	substring = substring.split(/\W+/)

	substring.each do |word|
		dictionary.each { |n| count[n] += 1 if word.include?(n) }
	end
	count
end

dictionary = ["below","down", "go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

print substrings("Howdy partner, sit down! How's it going?", dictionary)