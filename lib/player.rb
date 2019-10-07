class Player
  attr_reader :name, :weapon, :score
  attr_writer :weapon

  def initialize(name, weapon)
    @name = name
    @weapon = weapon
    @score = 0

  end

  def add_to_score
    @score += 1
  end

end
