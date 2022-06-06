class Scale
  attr_reader :name, :pitches
  def initialize(key, scale, offsets = 'm' * 12)
    @name = [key.capitalize, scale].join ' '
    selection = offsets
      .split('')
      .reduce([]) do |memo, item|
          memo + (
            case item
            when 'm' then [true]
            when 'M' then [true, false]
            when 'A' then [true, false, false]
            else []
            end
            )
        end
    pitches =
      %w(C G D A E B F# a e b f# c# g# d#).include?(key) ?
      %w(A A# B C C# D D# E F F# G G#) :
      %w(A Bb B C Db D Eb E F Gb G Ab)
    @pitches = pitches
      .rotate(pitches.index(key.capitalize))
      .each_with_index
      .reduce([]) do |memo, (item, index)|
        memo + (selection[index] ? [item] : [])
      end
  end
end