class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    @items.map { |item| item.fetch(:name, '') }.sort
  end

  def cheap
    @items.select { |item| item.fetch(:price, 0) < 30.00 }
  end

  def out_of_stock
    @items.select { |item| item.fetch(:quantity_by_size, '')&.length == 0 }
  end

  def stock_for_item(name)
    find = {}
    @items.each do |item|
      find = item.fetch(:quantity_by_size, {}) if item.fetch(:name, '') == name
    end
    find
  end

  def total_stock
    total_quantity = 0
    @items.each do |item|
      quantity_by_size = item.fetch(:quantity_by_size, {})
      quantity_by_size.values.each { |quantity| total_quantity += quantity } if quantity_by_size.length > 0
    end
    total_quantity
  end

  private

  attr_reader :items
end
