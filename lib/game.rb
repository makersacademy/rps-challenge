class Game
  WEAPONS = [:rock, :paper, :scissors]
  RULES = {rock: :scissors, paper: :rock, scissors: :paper}

  attr_reader :player, :computer_choice

  def initialize(player)
    @player = player
  end

  def self.start(game)
    @game = game
  end

  def self.game
    @game
  end

  def result(weapon_1, weapon_2=computer_weapon)
    return :tie if weapon_1 == weapon_2
    return :win if beats?(weapon_1, weapon_2)
    :lose
  end

  private

  def beats?(weapon_1, weapon_2)
    RULES[weapon_1] == weapon_2
  end

  def computer_weapon
    @computer_choice = WEAPONS.sample
  end
end
