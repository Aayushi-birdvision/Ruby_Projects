class IsbnVerifier
  def self.valid?(isbn)
    isbn = isbn.delete("-")
    return false if isbn.length != 10
    return fallse unless isbn.match(/^[0-9]+ X?$/)
    isbn = isbn.chars.reverse
    checksum = isbn[1 .. -1].each_with_index
    .inject(isbn[0] == 'X' ? 10 : isbn[0].to_i) {|product, pair| product + (pair[1] + 2) * pair[0].to_i}
    checksum % 11 == 0 

  end
end
