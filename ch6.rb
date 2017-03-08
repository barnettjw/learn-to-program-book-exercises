# Angry Boss

puts "What do you want?"
statement = gets.chomp
yelling = "Whaddaya mean \"" + statement + "\"?!?"

puts yelling.upcase

# Table of Contents

line_width = 60

puts
puts ("Table of Contents".center(line_width))
puts

ch1_title = "Chapter 1:  Getting Started"
ch1_page = "page 1"
puts (ch1_title.ljust(line_width / 2) + ch1_page.rjust(line_width / 2))

ch1_title = "Chapter 2:  Numbers"
ch1_page = "page 9"
puts (ch1_title.ljust(line_width / 2) + ch1_page.rjust(line_width / 2))

ch1_title = "Chapter 3:  Letters"
ch1_page = "page 13"
puts (ch1_title.ljust(line_width / 2) + ch1_page.rjust(line_width / 2))

puts