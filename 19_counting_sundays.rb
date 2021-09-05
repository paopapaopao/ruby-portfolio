def leap_year?(x)
  return x % 100 == 0 ? x % 400 == 0 : x % 4 == 0
end

def counting_sundays
  # compute the day of 1 Jan 1901
  base_year = 1900
  base_day = 0
  starting_day = base_day + (leap_year?(base_year) ? 2 : 1)

  # (1 Jan 1901 to 31 Dec 2000)
  # year, if leap year, month, day
  days = ['mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun']
  excess_days = [0, 3, 3, 6, 1, 4, 6, 2, 5, 0, 3, 5]
  leap_year_excess_days = [0, 3, 4, 0, 2, 5, 0, 3, 6, 1, 4, 6]
  sundays = 0
  Array(1901..2000).each do |year|
    Array(0..11).each do |month|
      if leap_year?(year)
        if days[starting_day + leap_year_excess_days[month]] == 'sun'
          sundays += 1
        end
      else
        if days[starting_day + excess_days[month]] == 'sun'
          sundays += 1
        end
      end
    end

    starting_day += leap_year?(base_year) ? 2 : 1
    starting_day %= 7
  end

  return sundays
end

# 171
p counting_sundays
