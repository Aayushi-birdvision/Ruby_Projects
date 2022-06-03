class Remark
  attr_reader :text

  def initialize(text)
    @text = text.strip
  end

  def question?
    text.end_with?('?')
  end

  def silence?
    text.empty?
  end

  def shouting?
    text == text.upcase && text != text.downcase
  end
end

class Bob
  def self.hey(text)
    remark = Remark.new(text)
    if remark.shouting? && remark.question?
      "Calm down, I know what I'm doing!"
    elsif remark.shouting?
      'Whoa, chill out!'
    elsif remark.question?
      'Sure.'
    elsif remark.silence?
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end
end
