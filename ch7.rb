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