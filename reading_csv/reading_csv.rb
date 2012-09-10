require 'csv'

def reading_csv

	hash = Hash.new("")
	CSV.foreach("employee.csv") do |row|
  		hash[row[2].lstrip] += "#{row[0]} (EmpId: #{row[1]})\n"
	end

	emp = CSV.read("employee.csv") 
	dev,des = emp.partition {|s| s[2].eql?(" Developer")}
	

	
puts hash['Developer']
	File.open('emp_format2.csv','w') do |row|
	  		hash.each do|k,v|
  			row.puts"#{k}:"
  			row.puts "#{v}\n"
  		end
	end  
end

reading_csv