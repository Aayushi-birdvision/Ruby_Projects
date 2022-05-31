class Isogram
  def isogram?(input)
    letter = input.downcase.gsub(/[- ]/,'').chars
    letter.uniq.length == letter.length 
  end
end
