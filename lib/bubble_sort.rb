# lib/bubble_sort.rb
# Like a 5-year-old:
# - We walk through the line comparing neighbors
# - If the left is bigger, we swap them
# - Repeat until no swaps happen

def bubble_sort(arr)
  a = arr.dup
  n = a.length

  loop do
    swapped = false

    (0...(n - 1)).each do |i|
      if a[i] > a[i + 1]
        a[i], a[i + 1] = a[i + 1], a[i]
        swapped = true
      end
    end

    break unless swapped
  end

  a
end