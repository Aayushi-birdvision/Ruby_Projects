class Odd
  def sum_odd
    sum = 0
    puts 'enter the number:- '
    n = gets.chomp.to_i

    i = 1
    while i <= n
      if i.odd?
        sum += i
        i += 1
      else
        i += 1
      end
    end
    puts "The sum is #{sum}"
  end
end
