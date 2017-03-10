# 99 Bottles of Beer on the Wall

verse1 = " Beer on the Wall!"
verse2 = " of Beer."
verse3 = "We take one down, pass it around, "
bottles = " Bottles"

i = 99
until i < 1
  if i == 1
    bottles = " Bottle"
  end

  puts i.to_s + " of" + bottles + verse1
  puts i.to_s + bottles + verse2
  puts verse3 + i.to_s + bottles + verse1
  puts

  i -= 1
end

# Deaf grandma

puts "Go on, say something to Grandma"
question = ""

while true
  question = gets.chomp
  random_year =  1930 + rand(21)
  not_since = "no, not since " + random_year.to_s + "!"

  if question == "bye".upcase
    break
  elsif question == question.upcase
    puts not_since.upcase
  else
    puts "huh?! speak up, sonny!".upcase
  end
end

# Deaf grandma extended 

puts
puts "Go on, say something to Grandma, firmly now"
question = ""
count = 0

while true
  question = gets.chomp
  random_year =  1930 + rand(21)
  not_since = "no, not since " + random_year.to_s + "!"

  if question == "bye".upcase
    count += 1
  else
    count = 0
  end

  if count >= 3
      break
  end

  if question == question.upcase
    puts not_since.upcase
  else
    puts "huh?! speak up, sonny!".upcase
  end
end

# Leap years
puts "Let's get a list of leap years"
puts "Starting year: "
starting_year = gets.chomp.to_i
puts "Ending year: "
ending_year = gets.chomp.to_i 
puts

for year in starting_year..ending_year
  if (year % 4 == 0) && (year % 100 != 0)
    puts year.to_s
  elsif year % 400 == 0
    puts year.to_s
  end
end