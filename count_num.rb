class Digit
  def count_num
    puts 'Enter the number:'
    num = gets.chomp.to_i

    temp = num
    count = 0

    while temp > 0
      count += 1
      temp /= 10
    end

    puts "#{num} has #{count} digits"
  end
end
obj = Digit.new
obj.count_num
