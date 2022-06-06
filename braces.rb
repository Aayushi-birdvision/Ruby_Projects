class Brackets
  BRACKETS = { '(' => ')', '{' => '}', '[' => ']' }.freeze
  def self.paired?(string)
    stack = []
    string.each_char do |char|
      stack << char if BRACKETS.key?(char)
      return false if BRACKETS.key(char) && BRACKETS.key(char) != stack.pop
    end
    stack.empty?
  end
end