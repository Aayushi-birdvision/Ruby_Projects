class BinarySearch
  def initialize(arr)
    @arr = arr
  end
  def search_for(num)
    return nil if @arr.empty?
    s = 0; e = @arr.length - 1
    loop do
      m = (s + e) / 2
      if @arr[m] == num
        return m
      elsif s < e && @arr[m] > num
        e = m - 1
      elsif s < e && @arr[m] < num
        s = m + 1
      else
        return nil
      end
    end
  end
end