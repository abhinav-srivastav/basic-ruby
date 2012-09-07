class Customer
	@@total_account = 0

	attr_reader :account_no ,:name,:balance

	def initialize(name)
		@name = name.capitalize
		@account_no = new_account
		@balance = 1000
	end 

	def new_account
		@@total_account += 1
	end

	def deposite(amount)
		transact(amount,'credit')
	end

	def withdrawl(amount)
		i = @balance - amount
		puts i
		case  
			when i <= 0 
				puts "a/c balance not sufficient"
			when  i < 1000
				puts "a/c balance below minimum balance of 1000"
				transact(amount,'debit')
			else
				transact(amount,'debit')
			end
	end
	
	def transact(amount,type)
		puts "a/c #{@account_no} of Mr.#{@name} #{type}ed with #{amount}"
		if type.eql?'debit'
			@balance -= amount
		else
			@balance += amount
		end
		puts "New balance is #{@balance}"
	end

end