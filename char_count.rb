def count(string)
	a = string.chars.to_a
	c = Hash.new(0) 
	 a.each do|alpha|
	 	case alpha 
	 	when /\d/ 
	 	 c["number"] += 1 
	 	when /[a-z]/ 
	 	 c["lowercase"] += 1 
	 	when /[A-Z]/ 
	 	 c["uppercase"] += 1 
	 	else
	 	 c["special"] += 1 
	    end
	 end
	 c
end