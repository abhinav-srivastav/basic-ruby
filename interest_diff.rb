class Interest 
  attr_accessor :p,:t,:r
   def diff
 	si = @p + (@p*@r*@t)/100
  	ci = @p * (1 + @r/100.0) ** @t
  	ci - si
  end
end

puts "Enter the principle"
principle = gets.to_i 
puts "Enter the time"
time = gets.to_i

obj = Interest.new.tap do |a|
  a.p = principle
  a.t = time
  a.r = 10
end

puts "Difference between SI and CI for rate = 10% yearly is Rs#{obj.diff}"

