class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    gross_production_rate = 221 * @speed
    success_rate = case @speed
                   when 1..4
                     1
                   when 5..8
                     0.9
                   when 9
                     0.8
                   when 10
                     0.77
                   end
    gross_production_rate * success_rate
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end
