class Player

  DEFAULT_SCORE = 0

  attr_accessor :score, :name, :weapon

  def initialize(name, score = DEFAULT_SCORE)
    @name = name
    @score = score
  end

  def choice(weapon)
    @weapon = weapon
  end

  # def wins_round
  #   @score += 1
  # end

end
