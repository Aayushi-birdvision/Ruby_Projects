class Complement
  def self.of_dna(dna)
    dna.chars.map { |char| complements[char] or return '' }.join
  end
  def self.complements
    {
      'C' => 'G',
      'G' => 'C',
      'T' => 'A',
      'A' => 'U',
    }
  end
end