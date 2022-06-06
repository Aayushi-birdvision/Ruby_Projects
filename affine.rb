module MathChar
  ALPHABET = ('a'..'z').to_a
  refine String do
    %i[+ *].each do |op|
      define_method(op) do |other|
        ALPHABET[ALPHABET.index(self).send(op, other).modulo(26)]
      end
    end
  end
end
class Affine
  using MathChar
  attr_reader :cipher
  def initialize(a, b)
    raise ArgumentError, "Error: a and m must be coprime" unless a.gcd(26) == 1
    @cipher = [*'a'..'z'].zip([*'a'..'z'].map { |x| (x * a) + b }).to_h
  end
  def encode(plaintext)
    plaintext.downcase
             .delete('^a-z0-9')
             .gsub(/[a-z]/, cipher)
             .scan(/.{1,5}/)
             .join(' ')
  end
  def decode(ciphertext)
    ciphertext.delete('^a-z0-9').gsub(/[a-z]/, cipher.invert)
  end
end