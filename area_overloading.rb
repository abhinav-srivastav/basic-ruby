def area(*side)
case side.length
	when 1 
		return	3.14*side[0]**2
	when 2 
		return side[0] * side[1]
	when 3 	
		s = (side[0] + side[1] + side[2])/2
		t = s*(s-side[0])*(s-side[1])*(s-side[2])
		return	Math.sqrt(t)
	end	
end

puts area(2)
puts area(2,2)
puts area(2,2,2)
