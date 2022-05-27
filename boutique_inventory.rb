class BoutiqueInventory

  attr_accessor :items

  def initialize(items)
    @items = items
  end

  def item_names
    items.map { |item| item [:name] }.sort
  end

  def cheap
    items.select { |item| item [:price] < 30 }
  end
end

items = ([
  {  price: 65.00,  name: 'Maxi Brown Dress', quantity_by_size: { s: 3, m: 7, l: 8, xl: 4 } },
  {  price: 50.00,  name: 'Red Short Skirt', quantity_by_size: {} },
  {  price: 29.99,  name: 'Black Short Skirt', quantity_by_size: { s: 1, xl: 4 } },
  {  price: 20.00,  name: 'Bamboo Socks Cats', quantity_by_size: { s: 7, m: 2 } }
])

obj = BoutiqueInventory.new(items)
print obj.item_names
puts '       '
print obj.cheap
