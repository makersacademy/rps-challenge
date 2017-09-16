

class Player

  attr_reader :name, :points

  def initialize(name = "Roborory", points = 0)
    @name = name
    @points = points
  end

  def player_store(location)
    location.store(self)
  end

  def take_a_turn(game, weapon)
    game.store(self, weapon)
  end

end
