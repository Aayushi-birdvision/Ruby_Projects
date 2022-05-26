class String
  def words
    array = [ "waters", "too", "polluted", "with", "germs"].join(" ")
    p array
  end
  obj = String.new
  obj.words
end