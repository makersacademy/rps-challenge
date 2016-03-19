class Game
  WEAPONS = [:rock, :paper, :scissors]
  RULES = {rock: :scissors, paper: :rock, scissors: :paper}

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.start(game)
    @game = game
  end

  def self.game
    @game
  end

  def result(weapon_1, weapon_2)
    return :tie if weapon_1 == weapon_2
    return :win if beats?(weapon_1, weapon_2)
    :lose
  end

  private

  def beats?(weapon_1, weapon_2)
    RULES[weapon_1] == weapon_2
  end
end
