class PigLatin
  PATTERN = /^(y(?=e)|x(?=[aeiouy])|[^aeiouy]?qu|[^aeiouyx]*)([a-z]+)/
  def self.translate(words)
    words = words.scan(/\b[a-z]+\b/)
    words.map { |w| w =~ PATTERN; "#{$2}#{$1}ay" }.join(' ')
  end
end