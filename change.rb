class Change
  
  class ImpossibleCombinationError < StandardError; end
  class NegativeTargetError < StandardError; end
  Candidate = Struct.new(:change, :due)
  def self.generate(coins, due)
    
    raise NegativeTargetError if due.negative?
    return [] if due.zero?
    queue = [Candidate.new([], due)]
    until queue.empty?
      cd = queue.shift
      return cd.change if cd.due == 0
      last = cd.change.last || 0
      coins
        .select { |coin| last <= coin && coin <= cd.due }
        .each { |coin| queue << Candidate.new([*cd.change, coin], cd.due - coin) }
    end
    
    raise ImpossibleCombinationError
  end
end