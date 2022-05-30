class Triangle
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a, @b, @c = [a, b, c].sort
    validate_triangle
  end
  def kind
    if equilateral?
      return :equilateral
    elsif isosceles?
      return :isosceles
    else
      return :scalene
    end
  end
  private
  def equilateral?
    a == b && a == c
  end
  def isosceles?
    a == b || b == c
  end
end