class Upper
  def word
    puts "enter a word"
    str = gets.chomp.to_s
    if str.size >= 10
      p str.upcase
    else
      p str
    end
  end

  obj = Upper.new
  obj.word
end
