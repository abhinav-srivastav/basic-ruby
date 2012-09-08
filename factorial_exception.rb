def fact(n)
	raise  "number is negative " if (1..n).to_a.empty?
	prod = 1
  	(1..n).each do |num|
  		prod *= num
  	end
	prod
	rescue
		puts "Enter a valid positive number"
		num = gets.to_i
		fact(num)
end

puts "Enter a number"
num = gets.to_i
puts "The factorial is #{fact(num)}"

