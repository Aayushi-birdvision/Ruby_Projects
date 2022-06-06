class InvalidCodonError < StandardError; end
class Translation
  CODONS = {
    %w(AUG) => 'Methionine',
    %w(UUU UUC) => 'Phenylalanine',
    %w(UUA UUG) => 'Leucine',
    %w(UCU UCC UCA UCG) => 'Serine',
    %w(UAU UAC) => 'Tyrosine',
    %w(UGU UGC) => 'Cysteine',
    %w(UGG) => 'Tryptophan',
    %w(UAA UAG UGA) => 'STOP'
  }.freeze
  def self.of_codon(codon)
    _, protein = CODONS.find { |k, _| k.include? codon }
    protein || raise(InvalidCodonError)
  end
  def self.of_rna(strand)
    codons = strand.scan(/.{3}/)
    stop_codons = CODONS.key('STOP')
    codons.take_while { |codon| !stop_codons.include?(codon) }
          .map { |codon| of_codon(codon) }
  end
end

