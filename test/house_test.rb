require 'minitest/autorun'
require 'minitest/pride'
require './lib/house'

class HouseTest < Minitest::Test

  def test_check_it_exists
    house = House.new("$400000", "123 sugar lane")

    assert_instance_of House, house
  end

  def test_it_has_attributes
    house = House.new("$400000", "123 sugar lane")

    assert_equal "$400000", house.cost
    assert_equal "123 sugar lane", house.address
  end

  def test_it_can_convert_cost_to_integer
    house = House.new("$400000", "123 sugar lane")

    assert_equal 400000, house.price
  end

  def test_it_can_find_rooms
    house = House.new("$400000", "123 sugar lane")

    assert_equal [], house.rooms
  end
end
