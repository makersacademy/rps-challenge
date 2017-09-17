

class Player

  attr_reader :name, :points, :weapon

  def initialize(name = "Roborory", weapon = 'My naked fists!', points = 100)
    @name = name
    @points = points
    @weapon = weapon
  end

  def player_store(location)
    location.store(self)
  end

  def take_a_turn(game, weapon)
    game.store(self, weapon)
  end

  def point_change(function, amount)
    function == 'add' ? @points += amount : @points -= amount
  end

  def select_weapon(choice)
    @weapon = choice
  end

end
