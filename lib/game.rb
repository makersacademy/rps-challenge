class Game
  WEAPONS = [:rock, :paper, :scissors]
  extend Forwardable

  def_delegator :player_1, :name, :player_1_name

  attr_reader :players, :weapons

  def initialize(player_1)
    @players = [player_1]
    @weapons = WEAPONS
  end

  def player_1
    @players[0]
  end

end
