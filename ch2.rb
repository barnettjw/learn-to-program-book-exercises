# hours in a year

hours_in_day = 24
days_in_year = 365
hours_in_year = hours_in_day * days_in_year

puts "Hours in a Year: " + hours_in_year.to_s

# minutes in a decade

minutes_in_hour = 60
years_in_decade = 10
minutes_in_decade = minutes_in_hour * hours_in_day * days_in_year * years_in_decade

puts "Minutes in a Decade: " + minutes_in_decade.to_s

# your age in seconds
seconds_in_minute = 60
age_in_years = 32
seconds_in_year = seconds_in_minute * minutes_in_hour * hours_in_day * days_in_year
age_in_seconds = seconds_in_year * age_in_years

puts "Age in Seconds: " + age_in_seconds.to_s

# our dear author's age

author_age_in_seconds = 1100 * 1000000
author_age_in_years = author_age_in_seconds / seconds_in_year

puts "Our DeaR Author's Age: " + author_age_in_years.to_s + " years"