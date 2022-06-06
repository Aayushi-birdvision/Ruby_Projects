class Array
  def accumulate(&block)
    accumulator = []
    return to_enum(__method__) unless block_given?
    each { |o| accumulator << yield(o) } 
    accumulator
  end
end