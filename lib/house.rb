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
end
