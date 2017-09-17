

class Player

  attr_reader :name, :points, :weapon, :turns

  def initialize(name = "Roborory", weapon = random_weapon, points = 0, turns = 0)
    @name = name
    @points = points
    @weapon = weapon
    @turns = turns
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

  def random_weapon
    @weapon = ['Rock', 'Paper', 'Scissors'].sample
  end

  private

  def played_before?
    turns > 0
  end

end
