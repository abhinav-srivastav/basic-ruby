require_relative "array-hash"

class Array
	
def hash_inject

	hash_to_inject = self.create_hash
	group = hash_to_inject.keys.inject(Hash.new{|h,k| h[k] = []}) do |hash,(k,v)|
        	 
        	 if k.even?
        	   hash["even"] << hash_to_inject[k] 
        	 else
        	  hash["odd"] << hash_to_inject[k]
        	end
			hash
        end
		group
end
end
sample = ['abc','def',1234,234,'x','mnop',5,'zZzZ']
puts sample.hash_inject 
