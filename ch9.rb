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