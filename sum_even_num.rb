class Even
  def num_even
    sum = 0
    puts "enter the number:- "
    n = gets.chomp.to_i

    i=1
    while (i<=n)
      if(i%2==0)
        sum = sum +i 
        i= i+1
      else
        i=i+1
      end
    end
    puts "The sum is #{sum}"
  end
  obj = Even.new
  obj.num_even
end