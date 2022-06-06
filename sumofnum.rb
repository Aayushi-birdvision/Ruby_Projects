class SumOfMultiples
  def initialize(*args)
    @factors = args
  end
  def to(upper_limit)
    (1...upper_limit)
      .select { |num| @factors.any? { |factor| num.modulo(factor).zero? } }
      .reduce(0, :+)
  end
end