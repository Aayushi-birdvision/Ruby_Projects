
class Game
  def initialize
    @frame_id = 1
    @frames = []
    @current_frame = Frame.new(@frame_id)
  end
  BowlingError = StandardError
  def roll(pins)
    check_valid_roll(pins)
    check_game_status
    if @frame_id <= 10
      @frames.each {|frame| frame.bowl(pins) }
      @current_frame.bowl(pins)
      @frames << @current_frame if @current_frame.status != :open
      @current_frame = Frame.new(@frame_id += 1) if @current_frame.status != :open
    else
      @frames.each {|frame| frame.bowl(pins) }
    end
  end
  def score
    check_valid_scores
    @frames.sum {|frame| frame.total_score}
  end
  private
  def check_valid_roll(pins)
    raise BowlingError if pins < 0 || pins > 10
  end
  def check_game_status
    raise BowlingError if @frames.all? {|frame| frame.status == :closed} && @frames.size == 10
  end
  def check_valid_scores
    raise BowlingError if @frames.length < 10
    raise BowlingError if @frames.any? {|frame| frame.status != :closed}
  end
end
class Frame
  attr_reader :status, :total_score
  def initialize(id)
    @frame_id = id
    @score = []
    @bonus = []
    @status = :open
    @ball = 0
  end
  def bowl(pins)
    case @status
    when :strike
      @bonus << pins
      @status = :spare
    when :spare
      @bonus << pins
      check_bonus_rolls
      @status = :closed
    when :open
      @ball += 1
      @score << pins if @ball <= 2
      @status = set_status
    end
    check_valid_score
  end
  def total_score
    @score.sum + @bonus.sum
  end
  private
  def set_status
     return :spare if @ball == 2 && @score.sum == 10
     return :strike if @ball == 1 && @score.sum == 10
     return :closed if @ball == 2
     :open
  end
  def check_bonus_rolls
    raise Game::BowlingError if @bonus.first < 10 && @bonus.sum > 10
  end
  def check_valid_score
    raise Game::BowlingError if @score.sum > 10
  end
end