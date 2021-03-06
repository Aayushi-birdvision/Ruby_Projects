class BeerSong
  class << self
    def recite(from, count)
      from.downto(from - count + 1).map { |number| verse(number) }.join("\n")
    end
    private
    def bottles(count)
      case count
      when 0
        'no more bottles'
      when 1
        '1 bottle'
      else
        "#{count} bottles"
      end
    end
    def verse(number)
      <<~VERSE
        #{bottles(number).capitalize} of beer on the wall, #{bottles(number)} of beer.
        #{take_one_from(number)}, #{bottles((number - 1) % 100)} of beer on the wall.
      VERSE
    end
    def take_one_from(number)
      if number.zero?
        'Go to the store and buy some more'
      else
        "Take #{number == 1 ? 'it' : 'one'} down and pass it around"
      end
    end
  end
end
