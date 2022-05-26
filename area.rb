class Area
  def area_rect(length, breadth)
    area = length * breadth
    puts "The area of rectangle is #{area}"
  end
  obj = Area.new
  obj.area_rect(5, 4)

  def area_sq
  puts "enter length"
  length = gets.chomp.to_f
  puts "enter breadth"
  breadth = gets.chomp.to_f
  @area = length * breadth
  puts "Area of rectangle is #{@area}"
  end
  obj = Area.new
  obj.area_sq

end