class Player
  attr_reader :name, :hand

  def initialize(name)
    @name = name
    @hand = 'no hand'
  end
end
