class Clock
  attr_accessor :total_minutes

  def initialize(hour: 0, minute: 0)
    @total_minutes = (hour * 60 + minute).modulo(1440)
  end

  def to_s
    hours, minutes = total_minutes.divmod(60)
    format('%02d:%02d', hours, minutes)
  end

  def +(other)
    Clock.new(minute: total_minutes + other.total_minutes)
  end

  def -(other)
    Clock.new(minute: (total_minutes - other.total_minutes))
  end

  def ==(other)
    other.class == self.class &&
      other.total_minutes == total_minutes
  end
end
