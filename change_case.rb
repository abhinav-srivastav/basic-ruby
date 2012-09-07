class ChangeCase

	def initialize(name)
		@name = name
	end

	def to_s
	"#{@name.swapcase}"
	end 
end

#i = ChangeCase.new("hello WORLD!")
#puts i.to_s
