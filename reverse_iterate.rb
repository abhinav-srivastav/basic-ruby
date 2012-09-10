class Array
	def rev_iterate
		len = self.length - 1
		until len < 0 do
			yield self[len]
			len  -= 1
		end
	end
end

[2,4,6,8].rev_iterate { |i| print "#{i} "}