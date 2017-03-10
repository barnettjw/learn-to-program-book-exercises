# Building and sorting an array

list = []

while true
  input = gets
  if input.length == 1
    break
  end
  list.push input.chomp.downcase
end

puts list.sort

# Table of contents

line_width = 60
puts "Table of Contents".center(line_width)
puts

t_of_c = [["Chapter 1:  ", "Getting Started", "page 1"], 
          ["Chapter 2:  ", "Numbers", "page 9"],
          ["Chapter 3:  ", "Letters", "page 13"]]

t_of_c.each do | ch |
  center = (line_width - ch[0].length) / 2
  puts ch[0] + ch[1].ljust(center) + ch[2].rjust(center)
end
puts