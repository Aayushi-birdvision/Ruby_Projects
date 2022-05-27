class SimpleCalculator
  puts "enter the number to calculate"
  num1 = gets.chomp.to_i
  str = gets.chomp.to_s
  num2 = gets.chomp.to_i

  if str == '+'
    result = num1 + num2
    puts "#{num1} + #{num2} = #{result}"

  elsif str == '/'

    result = num1 / num2
    puts "#{num1} / #{num2} = #{result}"

  elsif str == '*'

    result = num1 * num2
    puts "#{num1} * #{num2} = #{result}"

  else

    puts "wrong operation declared"

  end
end
