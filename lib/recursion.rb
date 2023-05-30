class Recursion
  def self.fibs(num)
    array = []
    0.upto(num) do |i|
      if i == 0
        array << i
      elsif i == 1
        array << i
      else
        fib = array[i - 1] + array[i - 2]
        array << fib
      end
    end
    array
  end

  def self.fibs_r1(n)
    return [0] if n == 0
    return [0, 1] if n == 1

    array = fibs_r(n-1)
    array << array[-2] + array[-1]
  end

  def self.fibs_r2(n)
    array = []
    if n < 2
      n
    else
      self.fibs_r2(n-1) + self.fibs_r2(n-2)
    end
  end

  def self.merge_sort(arr = [])
    return arr if arr.length == 1

    #divide array into two
    divided = arr.each_slice((arr.length/2.to_f).round).to_a

    #do a recursive call for left and right side
    left = merge_sort(divided.first)
    right = merge_sort(divided.last)

    #compare and merge
    sorted = []
    until left.empty? || right.empty? do
      leftelement = left.first
      rightelement = right.first

      if leftelement <= rightelement
        sorted << left.shift
      else
        sorted << right.shift
      end
    end

    #add the last elements(no value to compare from the other side)
    return sorted + left + right
  end
end
