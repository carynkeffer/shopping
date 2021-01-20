class Vendor

  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = Hash.new
  end

  def stock(item, quantity)
    @inventory[item] = quantity
  end

  def check_stock(item)
    0
  end
end
