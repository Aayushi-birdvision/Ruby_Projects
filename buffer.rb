class CircularBuffer
  class BufferEmptyException < StandardError; end
  class BufferFullException  < StandardError; end
  private

  attr_reader :size
  attr_accessor :buffer

  public
  def initialize(size)
    @size = size
    clear
  end

  def clear
    self.buffer = []
  end

  def read
    raise BufferEmptyException if buffer.empty?
    buffer.shift
  end

  def write(data)
    raise BufferFullException if buffer.length == size
    buffer.push data
  end

  def write!(data)
    read if buffer.length == size
    write(data)
  end
end