class Game

  attr_reader :player_weapon, :computer_weapon

  WEAPONS = [:rock, :paper, :scissors]
  RULES = { rock: :scissors, paper: :rock, scissors: :paper }

  def initialize(player_weapon)
    @player_weapon = player_weapon.to_sym
    @computer_weapon = weapon
  end

  def self.create(player_weapon)
    @game = Game.new(player_weapon)
  end

  def self.instance
    @game
  end

  def weapon
    WEAPONS.sample
  end

  def result
    return :win if RULES[player_weapon] == computer_weapon
    return :lose if RULES[computer_weapon] == player_weapon
    :draw
  end

end
