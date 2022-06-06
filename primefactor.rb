class PrimeFactors
  def self.of(n)
    return [] if n < 2
    factor = (2..n).find { |i| n % i == 0 }
    [factor] + of(n / factor)
  end
end
