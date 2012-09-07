class Vehicle

	def initialize(name,price)
		@name = name
		@price = price
	end

	def display
		puts "#{@name} has a price of Rs#{@price}"
	end 

end