class Element
  attr_accessor :datum, :next
  def initialize(int)
    @datum = int
    @next = nil
  end
end
class SimpleLinkedList
  attr_accessor :list
  def initialize(arr=nil)
    @list = arr==nil ? [] : arr.map{|x| Element.new(x)}
  end
  def push(el)
    @list.push(el)
    return self
  end
  def pop
    @list.pop
  end
  def reverse!
    @list = @list.reverse
    return self
  end
  def to_a
    @list.map{|el| el.datum}.reverse
  end
end