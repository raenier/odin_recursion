require 'awesome_print'
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
end
