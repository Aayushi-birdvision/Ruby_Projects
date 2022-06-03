class Clock
  attr_accessor :total_minutes
  def initialize(hour: 0, minute: 0)
    @total_minutes = (hour * 60 + minute).modulo(1440)
  end
  def to_s
    hours, minutes = total_minutes.divmod(60)
    format('%02d:%02d', hours, minutes)
  end
  def +(clock)
    Clock.new(minute: total_minutes + clock.total_minutes)
  end
  def -(clock)
    Clock.new(minute: (total_minutes - clock.total_minutes))
  end
  def ==(clock)
    clock.class == self.class &&
      clock.total_minutes == total_minutes
  end
end