class Grains
  MIN_SQUARE = 1
  MAX_SQUARE = 64
  def square index
    fail ArgumentError,
      "Must choose chess square between #{MIN_SQUARE} and #{MAX_SQUARE},
    but got #{index}" unless (MIN_SQUARE..MAX_SQUARE).cover? index
    2**(index-1)
  end
  def total
    (MIN_SQUARE..MAX_SQUARE).sum{|index| square(index) }
  end
end
obj = Grains.new
print obj.total