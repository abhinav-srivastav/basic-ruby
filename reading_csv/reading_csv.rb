require 'csv'

def reading_csv

	hash = Hash.new("")
	CSV.foreach("employee.csv") do |row|
  		hash[row[2].lstrip] += "#{row[0]} (EmpId: #{row[1]})\n"
	end

	File.open('emp_format2.csv','w') do |row|
	  		hash.each do|k,v|
  			row.puts"#{k}:"
  			row.puts "#{v}\n"
  		end
	end  
end

puts reading_csv