def rot(a, b)
  
  res = Array.new(a.length)

  b.times do |i|
   new_last = a[0]
   new_first = a[1..-1]
   a = new_first + [new_last] 
  end 
 
  a
end 
def minimumSwaps(arr)
  smallest = [arr.max, nil] 
  sorted = false
  num_swaps = 0 
  until sorted  
    arr.each_with_index do |num, idx|
      (idx + 1...arr.length).each do |idx2|
        if arr[idx2] < arr[idx] && arr[idx2] < smallest[0]
          smallest = [arr[idx2], idx2]
          
        end 
      end 
      arr[idx], arr[smallest[1]] = arr[smallest[0]], arr[idx]
      smallest = [arr.max]
      num_swaps += 1 
    end 
  end 
  arr
end

p minimumSwaps([4,3,2,1])
