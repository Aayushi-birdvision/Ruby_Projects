class Product
  def multiply(num1, num2)
    result = num1 * num2
    puts "The product of number is #{result}"
  end
  obj = Product.new
  obj.multiply(5, 6)
end