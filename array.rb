class Array
 
	def power(expo)

		self.each_index do |index|
			self[index] **=expo
		end
		self
	end
end

a = [1,2,3,4,5,6]
a.power(3)
puts a
