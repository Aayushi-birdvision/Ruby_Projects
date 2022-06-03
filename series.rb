class Series
  def initialize(digits)
    raise ArgumentError unless /^\d*$/ === digits
    @digits = digits.chars.map(&:to_i)
  end

  def largest_product(length)
    return 1 if length.zero?
    raise ArgumentError if length.negative? || length > digits.length
    digits.each_cons(length).map { |arr| arr.reduce(:*) }.max
  end
  private

  attr_reader :digits

end