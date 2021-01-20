require 'minitest/pride'
require 'minitest/autorun'
require './lib/vendor'

class VendorTest < Minitest::Test
  def test_it_exists_and_has_attributes
    vendor = Vendor.new("Rocky Mountain Fresh")

    assert_instance_of Vendor, vendor
    assert_equal "Rocky Mountain Fresh", vendor.name
    assert_instance_of Hash, vendor.inventory
  end
end
