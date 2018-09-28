require_relative 'game'

class GameMode

  attr_reader :game, :player_mode

  def initialize(player_mode: :single_player, player1: nil, player2: nil, game_class: Game)
    @player_mode = player_mode
    if player_mode == :single_player
      @game = game_class.new(player1)
    else
      @game = game_class.new(player1, player2)
    end
  end

  def store_move(player1_move, player2_move = nil)
    game.store_move(player1_move, player2_move)
  end

  def who_won
    game.who_won
  end
end
