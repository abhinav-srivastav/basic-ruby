require_relative "vehicle"

class Bike < Vehicle
	attr_accessor :price 

	def initialize(name, price, dealer)
		super(name, price)
		@dealer = dealer
	end

	def display
		puts "#{@dealer}'s #{@name} has a price of Rs#{@price}"
	end
end


b = Bike.new("pulsar",50000,"bajaj")
b.display
b.price = 45000
b.display