require 'minitest/pride'
require 'minitest/autorun'
require './lib/vendor'
require './lib/item'
require './lib/market'

class MarketTest < Minitest::Test
  def test_it_exists_and_has_attributes
    market = Market.new("South Pearl Street Farmers Market")

    assert_instance_of Market, market
    assert_equal "South Pearl Street Farmers Market", market.name
    assert_equal [], market.vendors
  end

  def test_market_can_add_vendors
    market = Market.new("South Pearl Street Farmers Market")

    vendor1 = Vendor.new("Rocky Mountain Fresh")

    market.add_vendor(vendor1)

    assert_equal [vendor1], market.vendors
  end
end
