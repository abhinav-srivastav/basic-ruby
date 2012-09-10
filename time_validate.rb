
def reg_validate(time)
	exp = /(1 day & )?[0-23][:[0-59]]{2}/i
	puts time if time =~ exp
end


def time_validate(time1, time2)
	time1 = time1.split(':').reverse
	time2 = time2.split(':').reverse
	time_add = Array.new(3)
	time_add.fill(0)
	l = 60
	day = ""
	time1.each_index do |x|
		if x == 2
			l = 24
			time_add[x] += (time1[x].to_i + time2[x].to_i + time_add[x])%l
			day = ((time1[x].to_i + time2[x].to_i)/l).to_s
		else
			time_add[x] += (time1[x].to_i + time2[x].to_i + time_add[x])%l
			time_add[x+1] += (time1[x].to_i + time2[x].to_i )/l
		end
	end
	time_add.each_index do |t|
		time_add[t] = time_add[t].to_s.rjust(2,'0')
	end
	time_add = time_add.reverse.join(":")
	time_add = day + " day & " + time_add unless day == '0'
	reg_validate(time_add)
end

puts "Enter the time in hh:mm:ss"
time1 = gets.chomp

puts "Enter the time to add in hh:mm:ss"
time2 = gets.chomp

time_validate(time1,time2)