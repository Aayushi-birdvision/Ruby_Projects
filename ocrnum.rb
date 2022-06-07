class OcrNumbers
  def self.convert(input)
    lines = input.lines.map(&:chomp)
        raise ArgumentError if lines.size % 4 != 0 || lines.first.size % 3 != 0
    lines.each_slice(4).map do |slice|
      slice
        .map { |line| line.scan(/.../) }
        .transpose
        .map { |n| NUMBERS[n.join] }
        .join
    end.join(',')
  end
  NUMBERS = {
    ' _ '\
    '| |' \
    '|_|'  \
    '   '   => ?0,
    '   '\
    '  |' \
    '  |'  \
    '   '   => ?1,
    
    ' _ '\
    ' _|' \
    '|_ '  \
    '   '   => ?2,
    
    ' _ '\
    ' _|' \
    ' _|'  \
    '   '   => ?3,
    
    '   '\
    '|_|' \
    '  |'  \
    '   '   => ?4,
    
    ' _ '\
    '|_ ' \
    ' _|'  \
    '   '   => ?5,
    
    ' _ '\
    '|_ ' \
    '|_|'  \
    '   '   => ?6,
    
    ' _ '\
    '  |' \
    '  |'  \
    '   '   => ?7,
    
    ' _ '\
    '|_|' \
    '|_|'  \
    '   '   => ?8,
    
    ' _ '\
    '|_|' \
    ' _|'  \
    '   '   => ?9,
  }
  NUMBERS.default = ??
end