class ComplexNumber
  attr_reader :a, :b

  alias real a
  alias imaginary b

  def initialize(a, b)
    @a = a
    @b = b
  end

  def ==(c)
    a == c.a && b == c.b
  end

  def +(c)
    ComplexNumber.new(a + c.a, b + c.b)
  end

  def -(c)
    ComplexNumber.new(a - c.a, b - c.b)
  end

  def *(c)
    ComplexNumber.new((a * c.a - b * c.b), (b * c.a + a * c.b))
  end

  def /(c)
    ComplexNumber.new((a * c.a + b * c.b).to_f / (c.a ** 2 + c.b ** 2), (b * c.a - a * c.b).to_f / (c.a ** 2 + c.b ** 2))
  end

  def abs
    Math.sqrt(a ** 2 + b ** 2)
  end

  def conjugate
    ComplexNumber.new(a, -b)
  end
  
  def exp
    ComplexNumber.new(Math.exp(a) * Math.cos(b).round, Math.exp(a) * Math.sin(b).round)
  end
end
