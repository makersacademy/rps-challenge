require_relative 'game'

class GameMode

  attr_reader :game

  def initialize(player_mode: :single_player, player1: nil, player2: nil, game_class: Game)
    if player_mode == :single_player
      @game = game_class.new(player1)
    else
      @game = game_class.new(player1, player2)
    end
  end

  
end
