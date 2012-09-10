class Name 
	def initialize(firstname, lastname)
		raise "entered a null value" if firstname.empty? | lastname.empty?
		raise "invalid format of first name" unless firstname.capitalize!.nil?
		@firstname = firstname
		@lastname = lastname
	end
end