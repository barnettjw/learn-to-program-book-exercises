# full name greeting

puts "Hello there, and what's your name?"
puts

puts "Let's start with your first name?"
first_name = gets.chomp

puts "Ok, now your middle name?"
middle_name = gets.chomp

puts "And finally, your last name?"
last_name = gets.chomp

puts
puts "Pleaed to meet you, " + first_name.capitalize + " " + middle_name.capitalize + " " + last_name.capitalize

# bigger better favorite number

puts
puts "So ... what's your favorite number?"
favorite_number = gets.chomp.to_i
better_favorite_number = favorite_number + 1

puts
puts "Well, " + better_favorite_number.to_s + ", is a bigger, better number :)"