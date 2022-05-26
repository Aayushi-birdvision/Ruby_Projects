class Full_name
  def result
    add_name = []
    first_names = ["Hamburglar", "Grimace", "Ronald"]
    last_name = "McDonald"

    first_names.each do |first_name|
        add_name.push(first_name + " " + last_name)  
    end
    puts add_name  
  end
  obj = Full_name.new
  obj.result
end
