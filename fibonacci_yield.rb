def fib(limit)
	puts num1 = 1 
	puts num2 = 1
	until num1+num2 > limit do 
		yield(num1,num2)
		num1,num2 = num2,num1+num2
	end
end

fib(1000) { |i,j|  puts i+j }