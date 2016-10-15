class Player
  attr_reader :name, :weapon
  attr_accessor :score

  def initialize
    @score = 0
    @weapon = nil
  end

  def set_name(name)
    @name = name
  end

  def select_weapon(weapon)
    @weapon = weapon
  end

  def random_weapon_selection
    @weapon = ["Rock", "Paper", "Scissors"].sample
  end

end
