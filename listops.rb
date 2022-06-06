class ListOps
  def self.arrays(xs)
    xs.size
  end

  def self.reverser(xs)
    res = []
    xs.size.times {|i| res.push(xs[-1-i]) }
    res
  end

  def self.concatter(*xss)
    res = []
    xss.each {|xs| xs.each {|x| res.push(x)}}
    res
  end

  def self.mapper(xs, &b)
    res = []
    xs.each {|x| res.push(b.call(x))}
    res
  end

  def self.filterer(xs, &b)
    res = []
    xs.each {|x| res.push(x) if b.call(x)}
    res
  end

  def self.sum_reducer(xs)
    res = 0
    xs.each {|x| res += x}
    res
  end

  def self.factorial_reducer(xs)
    res = 1
    xs.each {|x| res *= x}
    res
  end
end