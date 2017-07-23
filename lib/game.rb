class Game

  DEFAULT_MODE = "1 Player"
  DEFAULT_PLAYER_2 = "Computer"
  attr_reader :player_1, :player_2, :mode

  def initialize(player_1, player_2, mode)
    @player_1 = player_1
    @player_2 = player_2
    @mode = mode
  end

  def self.instance
    @game
  end

  def self.add(player_1, player_2 = DEFAULT_PLAYER_2, mode = DEFAULT_MODE)
    @game = Game.new(player_1, player_2, mode)
  end

end
