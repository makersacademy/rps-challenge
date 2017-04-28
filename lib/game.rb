class Game

  WEAPONS = [:rock, :paper, :scissors]

  RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }

  attr_reader :weapon, :computer_weapon

  def initialize(weapon, computer_weapon)
    @weapon = weapon
    @computer_weapon = computer_weapon
  end

  def result
    check(@weapon, @computer_weapon) ? :win : :lose
  end

  def check(weapon, computer_weapon)
    RULES.any? { |key, value| key == weapon && value == computer_weapon }
  end

end
