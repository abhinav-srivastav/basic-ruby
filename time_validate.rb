require 'time'
def reg_validate(time)
	exp = /(1 day & )?[0-23][:[0-59]]{2}/i
  puts time if time =~ exp
end

def time_validate(time1, time2)
	time_add = Array.new(3)
	time_add.fill(0)
	day = ""
	
	time_add[2] += (time1.sec + time2.sec).to_i % 60
	time_add[1] += (time1.sec + time2.sec).to_i / 60

	time_add[1] += (time1.min + time2.min).to_i % 60
	time_add[0] += (time1.min + time2.min).to_i / 60

	time_add[0] += (time1.hour + time2.hour).to_i % 24
	day = ((time1.hour + time2.hour).to_i/24).to_s

	time_add.each_index do |t|
		time_add[t] = time_add[t].to_s.rjust(2,'0')
	end
  time_add = time_add.join(':').to_s
	time_add = day + " day & " + time_add unless day == '0'
	reg_validate(time_add)
end

puts "Enter the time in hh:mm:ss"
time1 = Time.parse(gets.chomp)
puts "Enter the time to add in hh:mm:ss"
time2 = Time.parse(gets.chomp)
time_validate(time1,time2)