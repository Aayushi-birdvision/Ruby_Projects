class CollatzConjecture
  def steps(integer)
    raise ArgumentError.new 'Argument must be a positive integer' unless integer > 0
    count = 0
    while integer != 1
      count += 1
      integer = integer.odd? ? integer * 3 + 1 : integer / 2
    end
    count
  end
end
obj = CollatzConjecture.new
print obj.steps(50)