class Atbash
  def self.encode(text)
    decode(text).scan(/.{1,5}/).join(' ')
  end
  def self.decode(text)
    text.downcase.gsub(/[^[:alnum:]]/, '').tr(('a'..'z').to_a.join, ('a'..'z').to_a.join.reverse)
  end
end
