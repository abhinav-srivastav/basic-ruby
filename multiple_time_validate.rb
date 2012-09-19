require 'time'
def reg_validate(time)
	exp = /(\d day & )?[0-23][:[0-59]]{2}/i
  puts time if time =~ exp
end

def time_validate(*time)	
	time_add = Array.new(3)
	time_add.fill(0)
	day = 0
	time.each do |add_time|
		add_time = Time.parse(add_time)
		time_add[2] = (add_time.sec + time_add[2]).to_i % 60
		time_add[1] += (add_time.sec + time_add[1]).to_i / 60

		time_add[1] = (add_time.min + time_add[1]).to_i % 60
		time_add[0] += (add_time.min + time_add[0]).to_i / 60

		time_add[0] = (add_time.hour + time_add[0]).to_i % 24
		day += (add_time.hour).to_i
  end
  
  day/=24
	time_add.each_index do |t|
		time_add[t] = time_add[t].to_s.rjust(2,'0')
	end
  
  time_add = time_add.join(':').to_s
	time_add = day.to_s + " day & " + time_add unless day == 0
	reg_validate(time_add)

end

time_validate "23:59:59", "23:59:59", "23:59:59", "23:59:59"