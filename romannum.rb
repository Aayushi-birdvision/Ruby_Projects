class Fixnum
  def to_roman
    NumeralConverter.to_roman(self)
  end
  module NumeralConverter
    def self.to_roman(n)
      numerals.map { |letter, value| count, n = n.divmod(value); letter * count }.join
    end
    private
    def self.numerals
      letters = %w[ M     CM   D    CD   C    XC  L   XL  X  IX  V IV  I ]
      values  =   [ 1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1 ]
      letters.zip values
    end
  end
end
