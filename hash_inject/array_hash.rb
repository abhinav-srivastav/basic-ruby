class Array
	def create_hash
		hash_by_length = Hash.new{|h,k| h[k] = []}
		for element in self do 
			hash_by_length[element.to_s.size] << element
		end
        hash_by_length
	end
end


