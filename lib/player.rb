class Player

  attr_reader :name, :weapon, :score

  def initialize(name)
    @name = name
    @weapon = nil
    @score = 0
  end

  def player_choice(weapon)
    @weapon = weapon
  end

  def score_up
    @score += 1
  end

end
