class Game

  attr_reader :player_1, :player_2, :player_mode, :game_mode

  def initialize(player_1, player_2, player_mode, game_mode)
    @player_1 = player_1
    @player_2 = player_2
    @player_mode = player_mode
    @game_mode = game_mode
  end

  def self.create(player1, player2, player_mode, game_mode)
    @game = Game.new(player1, player2, player_mode, game_mode)
  end

  def self.instance
    @game
  end

  def result

  end

end