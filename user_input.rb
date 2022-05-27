class Greator
  def number
    user = puts "Enter a number"
    num = gets.chomp.to_i
    if (num <=50)
      puts "#{num} is in between 0 to 50."

    elsif (num= 50<100)
      puts "#{user} is between 51 to 100."
    else
      puts "#{user} is above 100."
    end
  end
end
obj = Greator.new
obj.number
