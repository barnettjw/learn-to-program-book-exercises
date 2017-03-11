# Improved ask method
def ask question 

  while true
    puts question
    reply = gets.chomp

    if reply == "yes" 
      return true
    elsif reply == "no"
       return false
    else
      puts "Please answer 'yes' or 'no'"
    end
  end

end

ask "Do you like cake?"
ask "Do you like juice?"
wets_bed = ask "Do you wet the bed?"
ask "Do you like pasta?"
ask "Do you like cereal?"

puts "Thanks for your help"
puts wets_bed


# Old School Roman Numerals
def get_roman_numeral(year_remaining)
  roman_numeral_list = [[1000, "M"], [500, "D"], [100, "C"], [50,"L"], [10, "X"], [5,"V"], [1,"I"]]
  roman_numeral = ""

  roman_numeral_list.each do |item|
    count = year_remaining / item[0].to_i
    letter = item[1].to_s
    roman_numeral += letter * count
    year_remaining = year_remaining % item[0].to_i
  end

  return roman_numeral
end

puts "Enter a year to convert it to a (Old School) Roman Numeral:"
puts get_roman_numeral(gets.chomp.to_i)

# Modern Roman Numberals
def get_roman_numeral(year_remaining)
  roman_numeral_list = 
   [[1000, "M"], [900, "CM"], [500, "D"], [400, "CD"], [100, "C"], [90, "XC"], 
   [50,"L"],[40,"XL"], [10, "X"], [9, "IX"], [5,"V"], [4, "IV"], [1,"I"]]
  roman_numeral = ""

  roman_numeral_list.each do |item|
    count = year_remaining / item[0].to_i
    letter = item[1].to_s
    roman_numeral += letter * count
    year_remaining = year_remaining % item[0].to_i
  end

  return roman_numeral
end

puts "Enter a year to convert it to a (Modern) Roman Numeral:"
puts get_roman_numeral(gets.chomp.to_i)