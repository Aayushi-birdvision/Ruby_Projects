class Prime
  def self.nth(n)
    raise ArgumentError if n <= 0

    i = 1
    c = 0
    until c == n
      i += 1
      c += 1 if prime?(i)
    end
    i
  end

  def self.prime?(n)
    2.upto(Math.sqrt(n)).all? { |i| n % i != 0 }
  end
end
