
while 1 do
	puts "Enter the string (q to exit)"
	input = gets.chomp.downcase
	break if input.eql?'q'
	puts input.reverse == input ? "palindrome" : "not a palindrome"
end