class Vendor

  attr_reader :name,
              :inventory

  attr_accessor :stock

  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def stock(item, quantity)
    @inventory[item] += quantity
  end

  def check_stock(item)
    if inventory.include?(item) == false
      0
    else
      inventory[item]
    end
  end
end
