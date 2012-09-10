def reg_validate(time)
	exp = /(\d day & )?[0-23][:[0-59]]{2}/i
	puts time if time =~ exp
end


def time_validate(*time)
	0.upto(time.length - 1 ) do |i|
		time[i] = time[i].split(':').reverse
	end
	time_add = Array.new(3)
	time_add.fill(0)
	l = 60
	day = ""
	time[1].each_index do |x|
		total = 0
		0.upto(time.length - 1) do |i|
			total += time[i][x].to_i  
		end
		if x == 2 
			l = 24
			time_add[x] += (time_add[x] + total)%l
			day = (total/l).to_s
		else 
	 		time_add[x] += (total + time_add[x])%l
			time_add[x+1] += total/l
		end
	end
	time_add.each_index do |t|
		time_add[t] = time_add[t].to_s.rjust(2,'0')
	end
	time_add = time_add.reverse.join(":")
	time_add = day + " day & " + time_add unless day == '0'
	reg_validate(time_add)
end


