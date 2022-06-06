class Microwave
  def initialize(time)
    @time = time
  end
  def timer
    hours, seconds = @time.divmod(100)
    hours += seconds / 60
    seconds %= 60
    "%02d:%02d" % [hours, seconds]
  end
end
