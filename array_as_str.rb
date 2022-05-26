class Array_str
  def changed
    arr = Array["Don't", 'focus', 'on', 'your', 'failures,', 'focus', 'on', 'your', 'achievements.']
    joinarr = ''

    for i in 0..arr.length
      joinarr = joinarr + arr[i].to_s + ' '
    end
    puts joinarr
  end
  obj = Array_str.new
  obj.changed
end
