class Inc
  def increment_variable(variable)
    puts(variable + 1)
  end

  a = 10
end
obj = Inc.new
obj.increment_variable(a)
