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