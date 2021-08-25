def is_leap_year?(year)
	return year % 100 == 0 ? year % 400 == 0 : year % 4 == 0
end

def counting_sundays()
	month_day_count = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
	excess_days = [0, 3, 3, 6, 1, 4, 6, 2, 5, 0, 3, 5]
	leap_year = [0, 3, 4, 0, 2, 5, 0, 3, 6, 1, 4, 6]
	days = ['mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun']

	base_year = 1900
	base_month = 0
	base_date = 1
	base_day = 0

	# compute the day of 1 Jan 1901
	# starting_day = 1
	starting_day = base_day + (is_leap_year?(1900) ? 2 : 1)
	sundays = 0

	# (1 Jan 1901 to 31 Dec 2000)
	# year, if leap year, month, day

	Array(1901..2000).each do |year|
		Array(0..11).each do |month|
			if is_leap_year?(year)
				if days[starting_day + leap_year[month]] == 'sun'
					sundays += 1
				end
			else
				if days[starting_day + excess_days[month]] == 'sun'
					sundays += 1
				end
			end
		end

		starting_day += is_leap_year?(1900) ? 2 : 1
		starting_day %= 7
	end

	return sundays
end

# 171
p counting_sundays
