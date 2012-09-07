
puts "Enter the input string"
input = gets
hash_list = Hash.new(0)
char_array = input.chars
char_array.select {|a| a =~ /[a-zA-Z]/}.each do |alpha|
	hash_list[alpha] +=1
end
puts hash_list