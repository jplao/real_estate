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

end
