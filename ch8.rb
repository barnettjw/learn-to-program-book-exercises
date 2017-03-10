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

line_width = 50
count = 0
title = "Table of Contents"

puts title.center(line_width)
puts

t_of_c = [["Getting Started", 1], 
          ["Numbers", 9],
          ["Letters", 13]]

t_of_c.each do |ch|
  count += 1
  chapter_num = "Chapter " + count.to_s + ":   "
  page = "page " + ch[1].to_s

  center_text = (line_width - chapter_num.length) / 2
  puts chapter_num + ch[0].ljust(center_text) + page.rjust(center_text)
end
puts