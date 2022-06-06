class Grains
  BOARD_SIZE = 64
  def self.square(square_number)
    raise ArgumentError if outside_scope?(square_number)

    (square_number - 1).times.inject(1) { |grains, _| grains += grains }
  end

  def self.total
    (1..BOARD_SIZE).sum { |n| self.square(n) }
  end

  private

  def self.outside_scope?(n)
    !n.between?(1, BOARD_SIZE)
  end
end
