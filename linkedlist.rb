class Node
  attr_accessor :datum, :next, :prev
  def initialize(datum)
    @datum = datum
    @next = nil
    @prev = nil
  end
end
class Deque
  def initialize(array = [])
    @first = nil
    @last = nil
    array.each {|item| push(Node.new(item))}
  end
  def push(datum)
    node = Node.new(datum)
    node.prev = @last
    node.prev.next = node unless node.prev.nil?
    @first = node if @first.nil?
    @last = node
    self
  end
  def unshift(datum)
    node = Node.new(datum)
    node.next = @first
    node.next.prev = node unless node.next.nil?
    @first = node
    @last = node if @last.nil?
    self
  end
  def pop
    node = @last
    if @first.eql?(@last)
      @first = nil
      @last = nil
    end
    @last = node.prev
    node.prev.next = nil unless node.prev.nil?
    node.datum
  end
  def shift
    node = @first
    if @first.eql?(@last)
      @first = nil
      @last = nil
    end
    @first = node.next
    node.next.prev = nil unless node.next.nil?
    node.datum
  end
end
