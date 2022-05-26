class Array
  def includes
    fruits = ["Apple" , "Mango" , "Orange"].include? 'Mango'

    puts fruits
  end
end
obj = Array.new
obj.includes
