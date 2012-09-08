def prime_number(num)
	num/2.step(2,-1){|x| return "not a prime" if num % x == 0 }
	"prime"
end 