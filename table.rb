class Table
  def multiply
    puts "Enter the number"
    num = gets.chomp.to_i 
    i=1
    while (i<=10)
      multiply = num * i
      puts "#{num} * #{i} =#{multiply}"
      i+=1
    end
  end
end
obj=Table.new
obj.multiply
