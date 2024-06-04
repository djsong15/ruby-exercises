def bubble_sort(arr)
  i = 1
  sorted = false
  until sorted == true
    sorted = true
    while i < arr.length
      if arr[i] < arr[i - 1]
        arr[i - 1], arr[i] = arr[i], arr[i - 1]
        sorted = false
      end
      i += 1
    end
    i = 1
  end
  arr
end

p bubble_sort([4, 3, 78, 2, 0, 2])
