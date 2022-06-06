class ResistorColorTrio
    
  COLORS_VALUES = %w[
    black
    brown
    red
    orange
    yellow
    green
    blue
    violet
    grey
    white
  ].freeze
  attr_reader :colors

  def initialize(colors)
    @colors = colors
  end

  def label
    raise ArgumentError unless

      colors.all? { |color| COLORS_VALUES.include?(color) }
    resistance = first_two_colors * 10**third_color
    if resistance > 1000
      resistance /= 1000
      measure = 'kiloohms'
    else
      measure = 'ohms'
    end
    "Resistor value: #{resistance} #{measure}"
  end

  def first_two_colors
    colors.take(2).map { |color| value(color) }.join.to_i
  end

  def third_color
    value(colors[2])
  end

  def value(color)
    COLORS_VALUES.index(color)
  end
end