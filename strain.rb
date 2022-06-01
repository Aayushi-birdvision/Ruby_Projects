class Array
  def keep(&block)
    test(true, &block)
  end
  def discard(&block)
    test(false, &block)
  end
  def test(gate)
    result = []
    each { |item| result << item if yield(item) == gate }
    result
  end
end