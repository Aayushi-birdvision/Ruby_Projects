class Palindromes
  Palindrome = Struct.new(:value, :factors)
  attr_accessor :largest, :smallest

  def initialize(max_factor: 1, min_factor: 1)
    @factors = [*min_factor..max_factor].repeated_combination(2)
  end

  def generate
    @smallest, @largest = @factors
                          .group_by { |arr| arr.reduce(:*) }
                          .select { |x, _| palindrome? x }
                          .minmax
                          .map { |x, y| Palindrome.new(x, y) }
  end

  private

  def palindrome?(x)
    x.to_s.reverse == x.to_s
  end
end
