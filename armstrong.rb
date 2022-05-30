class ArmstrongNumbers
  def self.include?(number)
    number.digits.sum { |n| n ** number.digits.size } == number
  end
end