require 'pry'

class Room

  attr_reader :category,
              :given_length,
              :given_width

  def initialize(category, given_length, given_width)
    @category = category
    @given_length = given_length
    @given_width = given_width
  end

  def area
    @given_length * @given_width
  end
binding.pry
end
