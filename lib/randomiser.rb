require_relative 'item'

class Randomiser

  attr_reader :picked_randomly

  def initialize(array = Item::POSSIBILITIES)
    @picked_randomly = array.sample
  end

end
