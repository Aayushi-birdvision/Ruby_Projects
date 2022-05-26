class Search
  def string
    puts 'Enter the string:'
    str1 = gets.chomp
    puts 'Enter the substring:'
    substr1 = gets.chomp

    if str1.include? substr1
      puts 'Substring Found'
    else
      puts 'substring Not Found'
    end
  end
end
obj = Search.new
obj.string
