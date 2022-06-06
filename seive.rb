class Sieve
  attr_reader :primes

  def initialize(max)
    @max    = max
    @primes = generate_primes(max)
  end
  private
  def generate_primes(max)
    list = Array.new(max+1) { true }
    list[0] = false
    list[1] = false
    primes  = []
    (2..max).each do |index|
      potential = list[index]
      next unless potential
      ((2*index)..max).step(index).each do |i2|
        list[i2] = false
      end
      primes << index
    end
    primes
  end
end
