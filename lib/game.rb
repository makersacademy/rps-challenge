class Game

  attr_reader :player_1, :player_2, :current_player, :opponent

  def initialize(player_1, player_2, attack)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = player_1
    @opponent = player_2
    @attack = attack
  end

  def self.create(player1, player2, player_mode, game_mode)
    @game.new(player1, player2, player_mode, game_mode)
  end

  def self.instance
    @game
  end

end