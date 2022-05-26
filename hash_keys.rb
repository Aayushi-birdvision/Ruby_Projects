class Hash
  def Key_hash
    a = { 'x' => 30, 'y' => 20 }
    p a['x']
    p a['f']
  end
  obj = Hash.new
  obj.Key_hash
end
