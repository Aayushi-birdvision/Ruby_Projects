class Raindrops
  def convert(num)
    output = ""
    if num % 3 == 0
      output += "Pling"
    end
    if num % 5 == 0
      output += "Plang"
    end
    if num % 7 == 0
      output += "Plong"
    end
    if num % 3 != 0 && num % 5 != 0 && num % 7 != 0
      output += num.to_s
    end
    print output
  end
end
obj = Raindrops.new
obj.convert(8)
