# frozen_string_literal: true

def bubble_sort(array)
  loop do
    swapped = false
    array.each_with_index do |number, index|
      break if index == array.length - 1

      next unless number > array[index + 1]

      array[index] = array[index + 1]
      array[index + 1] = number
      swapped = true
    end

    break if swapped == false
  end
  array
end

array_to_sort = [4, 3, 78, 2, 0, 2]
p bubble_sort(array_to_sort)
