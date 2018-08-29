require 'pry'
require './lib/room'

class House

  attr_reader :cost,
              :address,
              :rooms

  def initialize(cost, address)
    @cost = cost
    @address = address
    @rooms = []
  end

  def price
    @cost.delete!("$").to_i
  end

  def add_room(room)
    @rooms << room
    room
  end

  def rooms_from_category(wanted_room)
    @rooms.find_all do |room|
      room.category == wanted_room
    end
  end

  def area
    total_area = 0
    @rooms.each do |room|
      total_area += room.area
    end
    total_area
  end

  def price_per_square_foot
    (price.to_f/area).round(2)
  end

  def rooms_sorted_by_area
    @rooms.sort_by do |room|
      room.area
    end.reverse
  end

  def rooms_sorted_by_category
    @rooms.sort_by do |room|

    end
  end


end
