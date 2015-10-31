require_relative 'item_values'

class Player

  include ItemValues

  COMPUTER = rand(1..CHOICES)
  CHOICES = 3

  attr_reader :name, :choice_value

  def initialize(name)
    @name = name
  end

  def choice(rps)
    @choice_value = ItemValues[rps]
  end

end
