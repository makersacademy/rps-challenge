class Player
  attr_reader :weapon

  def initialize
    @weapon = nil
  end
  
  def choose_weapon
  end
end

class HumanPlayer < Player
  attr_reader :name
  attr_writer :weapon

  def initialize(name)
    super()
    @name = name
  end

  def choose_weapon
    # Do nothing. Human player always uses the preselected weapon.
  end
end

class ComputerPlayer < Player
  def choose_weapon
    @weapon = Game::WEAPONS.sample
  end
end
