
def fact(n)
   n <= 1 ? 1 :  n * fact( n - 1 )
end

 def pascal_triangle(input) 

     for lines in 0..input
     	for ele in 0..lines
          yield(fact(lines)/(fact(ele)*fact(lines-ele)))
		end
		puts
     end
 end

pascal_triangle(6){|ele| print "#{ele} "}

