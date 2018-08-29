require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'

class RoomTest < Minitest::Test

  def test_check_it_exists
    r = Room.new(:bedroom, 10, 13)

    assert_instance_of Room, r
  end

  def test_it_has_attributes
    r = Room.new(:bedroom, 10, 13)

    assert_equal :bedroom, r.category
    assert_equal 10, r.given_length
    assert_equal 13, r.given_width
  end

  def test_it_can_calculate_area
    r = Room.new(:bedroom, 10, 13)

    assert_equal 130, r.area
  end

end
