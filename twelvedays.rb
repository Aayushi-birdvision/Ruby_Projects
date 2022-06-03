class TwelveDays
  def self.preamble(n)
    nth = %w[first second third fourth fifth sixth seventh eighth ninth tenth eleventh twelfth]
    "On the #{nth[n]} day of Christmas my true love gave to me: "
  end

  def self.body
    [
      "a Partridge in a Pear Tree.\n",
      'two Turtle Doves, and ',
      'three French Hens, ',
      'four Calling Birds, ',
      'five Gold Rings, ',
      'six Geese-a-Laying, ',
      'seven Swans-a-Swimming, ',
      'eight Maids-a-Milking, ',
      'nine Ladies Dancing, ',
      'ten Lords-a-Leaping, ',
      'eleven Pipers Piping, ',
      'twelve Drummers Drumming, '
    ]
  end

  def song
    a = (0..11).map do |i|
      preamble(i) + body.slice(0..i).reverse.join
    end.join("\n")
  end
end
