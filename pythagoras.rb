class Triplet
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  def sum
    a + b + c
  end
  def product
    a * b * c
  end
  def pythagorean?
    return a**2 + b**2 == c**2 if a < b
    false
  end
  def self.where(max_factor:, min_factor: 1, sum: nil)
    triples = (min_factor..max_factor).to_a.combination(3).map do |(a, b, c)|
      new(a, b, c) if new(a, b, c).pythagorean?
    end.compact
    sum ? triples.keep_if { |triple| triple.sum == sum } : triples
  end
end
