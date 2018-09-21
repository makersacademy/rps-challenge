
class Player
  attr_reader :name
  attr_accessor :choice
  WEAPONS = [:rock, :paper, :scissors]
  def initialize(name = "Skynet")
    @name = name
    @choice = nil
  end

  def random_move
    @choice = WEAPONS.sample
  end

end