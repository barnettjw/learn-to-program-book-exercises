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