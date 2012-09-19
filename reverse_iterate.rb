class Array
	def rev_iterate
		while self.length > 0 do
			yield self.pop
		end
	end
end

[2,4,6,8].rev_iterate { |i| print "#{i} "}