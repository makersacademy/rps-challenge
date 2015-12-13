class Game
  extend Forwardable

  def_delegator :player_1, :name, :player_1_name

  attr_reader :players

  def initialize(player_1)
    @players = [player_1]
  end

  def player_1
    @players[0]
  end

end
