#Rite of Passage: Sorting
def recursive_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  temp_sorting = []
  smallest = unsorted.pop

  unsorted.each do |elem|
    if elem < smallest
      #if you find a smaller element, send the current smallest to temp_sorting, and set the smallest element
      temp_sorting.push smallest
      smallest = elem
    else
      #otherwise send the current element to temp sorting
      temp_sorting.push elem
    end
  end

  #after iterating is finished we have compared every element to smallest confirming that the current contents of smallest is indeed the smallest element
  sorted.push(smallest)
  #recursively call recursive_sort passing in temp_sorting  which doesn't have the elements that have been sent to sorted and passing in sorted with it's current element
  recursive_sort temp_sorting, sorted
end

p recursive_sort ["d", "b", "apes", "c", "ape", ], []
#debugging - verify my sort method against the built-in sort method
#p ["d", "b", "apes", "c", "ape", ].sort #

#Shuffle
def shuffle unshuffled, shuffled
  if unshuffled.length <= 0
    return shuffled
  end

  temp_unshuffled = []
  random = unshuffled[rand(0..unshuffled.length - 1)]
  
  #iterate through looking for the randomly selected element
  unshuffled.each do |elem|
    if elem == random
      #if found add it to the shuffled array
      shuffled.push elem
    else
      #if not add it to temp_unshuffled
      temp_unshuffled.push elem
    end
  end

  #recursively call shuffle with temp_unshuffled, to continue shuffle the remaining items
  shuffle temp_unshuffled, shuffled
end

p shuffle ["dog", "ball", "apes", "c", "ape", "123", "LARK"], []

#Dictionary sort
def recursive_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  temp_sorting = []
  smallest = unsorted.pop

  unsorted.each do |elem|
    if elem.downcase < smallest.downcase
      #if you find a smaller element, send the current smallest to temp_sorting, and set the smallest element
      temp_sorting.push smallest
      smallest = elem
    else
      #otherwise send the current element to temp sorting
      temp_sorting.push elem
    end
  end

  #after iterating is finished we have compared every element to smallest confirming that the current contents of smallest is indeed the smallest element
  sorted.push(smallest)
  #recursively call recursive_sort passing in temp_sorting  which doesn't have the elements that have been sent to sorted and passing in sorted with it's current element
  recursive_sort temp_sorting, sorted
end

p recursive_sort ["dog", "b", "Apes", "Cat", "ape", ], []

#English Number
def get_number
  puts "Please enter a number between 1 to 999"
  number = gets.chomp.to_i
  if number < 1 || number > 1000
    get_number
  else
    return number
  end
end

def english_number number, written_number
  
  ones = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  teens = ["eleven", "twelve", "thirteen", "fourteen", "fifeteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  tens = ["ten", "twenty", "thirty", "fourty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  #larger = ["thousand", "million", "billion", "trillon", "quadrillion"]

  if number < 10
    written_number += ones[number - 1]
    number -= number
  elsif number > 10 && number < 20
    #eleven is in index 0 of teens so we need to add 11
    written_number += teens[number - (11)]
    number -= number
  elsif number > 19 && number < 100
    write_tens = number / 10
    written_number += tens[write_tens - 1]

    if (number % 10) > 0
      number = number - (10 * (number / 10))
      written_number += "-"
      english_number number, written_number
    end
  elsif number > 99 && number < 1000
    write_hundreds = number / 100
    written_number += ones[write_hundreds - 1] += " hundred"

    if (number % 100) > 0
      number = number % 100
      written_number += " "
      english_number number, written_number
    end
  end
  if number <= 0
    puts written_number
  end
end

english_number get_number, ""


