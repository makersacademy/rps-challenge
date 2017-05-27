class Game

  WEAPONS = [:rock, :paper, :scissors]

  RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }

  attr_reader :weapon, :computer_weapon

  def self.create(weapon, computer_weapon)
    @game = Game.new(weapon, computer_weapon)
  end

  def self.instance
    @game
  end

  def initialize(weapon, computer_weapon)
    @weapon = weapon
    @computer_weapon = computer_weapon
  end

  def result
    return :draw if weapon == computer_weapon
    check(weapon, computer_weapon) ? :win : :lose
  end

  def check(weapon, computer_weapon)
    RULES.any? { |key, value| key == weapon && value == computer_weapon }
  end

end
