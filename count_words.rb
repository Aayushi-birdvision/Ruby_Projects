class Count
  def words
    str = 'Aayushi'
    puts str.length

    string = 'how to count the number of words in a string'
    puts string.length
    string_a = 'how to count the number of words in a string'
    puts string_a.split
    puts string_a.split.length
  end
  obj = Count.new
  obj.words
end
