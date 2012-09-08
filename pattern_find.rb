def pattern_find(string , pattern)
	r = /#{pattern}/
	puts  string.gsub!(r,"(#{pattern})")
end

puts "enter the string"
string = gets 
puts "enter the pattern to match"
pattern = gets.chomp
pattern_find(string,pattern)