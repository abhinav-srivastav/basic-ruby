require 'json'
require 'date'
require 'pp'
def hotel_reservation(from, till)
	arrival = Date.parse(from)
	departure = Date.parse(till)
	duration = (departure - arrival).to_i
 	json = JSON.parse(File.read('hotels.json'))
	sea_dur = 0
	spl_rate = 0
	json.each do |hotel_detail|
	
		hotel_name = hotel_detail['Hotel_name']
		puts "\nameHotel name : #{hotel_name}"
		rate = hotel_detail['rate'].to_i
		puts "Rate : #{rate}"
		tax = hotel_detail['tax'].to_i
	
			if hotel_detail.include?'seasonal_rates'
			seasonal = hotel_detail['seasonal_rates']
	
			seasonal.each do |occassion|
				sea_name = occassion.keys[0]
	
				occassion.values.each do |att|
					strt_day = Date.parse(("#{att['start'] }" + "- #{arrival.year}").split('-').reverse.join('-'))
					end_day = Date.parse(("#{att['end'] }" + "- #{arrival.year}").split('-').reverse.join('-'))	
	
					if strt_day.month > end_day.month
						end_day = Date.parse(("#{att['end'] }" + "- #{arrival.year + 1}").split('-').reverse.join('-')) 
					end
					sea_dur = ((arrival..departure).to_a & (strt_day..end_day).to_a).length

					if sea_dur == 0 && arrival.year < departure.year
						strt_day = Date.parse(("#{att['start'] }" + "- #{arrival.year + 1}").split('-').reverse.join('-'))
						end_day = Date.parse(("#{att['end'] }" + "- #{arrival.year + 1}").split('-').reverse.join('-'))	
						sea_dur = ((arrival..departure).to_a & (strt_day..end_day).to_a).length
					end
					spl_rate = att['rate'].to_i

					if sea_dur > 0
						puts "Your reservation at #{hotel_name} includes a season period of #{sea_name} of #{sea_dur} days"
						puts "Charge rate during this time was #{spl_rate}/day"
					end
				end
			end
		end
		amount = sea_dur * spl_rate + (duration - sea_dur) * rate
		amount += amount * tax/100.0
		puts "Total payable amount after a tax of #{tax}% is Rs #{amount}"

	end
end

puts "Enter the arrival date in YYYY-MM-DD"
arrival = gets.chomp 

puts "Enter the departure date in YYYY-MM-DD"
departure = gets.chomp 

hotel_reservation(arrival,departure)