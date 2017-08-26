#SORTOWANIE QUICKSORT

def quicksort(list)
  return list if list.empty?
  pivot = list.sample
  list.delete_at(list.index(pivot))
  smaller_than_pivot =[]
  bigger_than_pivot = []
  list.each do |e|
    if e < pivot
      smaller_than_pivot << e
    else
      bigger_than_pivot << e
    end
  end
(quicksort(smaller_than_pivot) <<pivot<<quicksort(bigger_than_pivot)).flatten
end

p quicksort([74,77,64,19,43,47,77,66,47,60,7,97,71,87,95,79])
