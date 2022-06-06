class SecretHandshake
  Secrets = {1=>'wink', 2=>'double blink', 4=>'close your eyes', 8=>'jump'}

  def initialize(number)
    @number = number
  end
  def commands
    results = []
    if @number.is_a? Numeric
      Secrets.each { |k,v| results << v if (@number & k).nonzero? }
      results.reverse! if (@number & 16).nonzero?
      results
    else
      []
    end
  end
end

