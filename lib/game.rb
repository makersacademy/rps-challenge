class Game

  DEFAULT_PLAYER_2 = "Computer"
  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.instance
    @game
  end

  def self.add(player_1, player_2 = DEFAULT_PLAYER_2)
    @game = Game.new(player_1, player_2)
  end

end
