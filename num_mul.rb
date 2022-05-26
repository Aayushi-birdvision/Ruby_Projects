class Product 
  def method
    puts "Enter first number"
    num1 = gets.chomp.to_i

    puts "Enter first number"
    num2 = gets.chomp.to_i

    multiply = num1 * num2
    p multiply
  end
  obj = Product.new
  obj.method
end