require_relative './player.rb'
require_relative './move_list.rb'

class Game
  attr_reader :player1, :player2, :result, :current_player

  def initialize(player_names, player_class = Player, list_class = MoveList)
    @player1 = player_class.new(player_names[0])
    @player2 = player_class.new(player_names[1])
    @move_list = list_class.new
    @current_player = player1
  end

  def store_move(move)
    @move_list.store_move(move)
    @current_player = @current_player == player1 ? player2 : player1
  end

  def moves_complete?
    @move_list.full?
  end

  def resolve_moves
    @result = @move_list.resolve_moves(player1.name, player2.name)
  end

  def reset
    @move_list.reset
    @result = ''
    @current_player = player1
  end

  def self.instance
    @current_game
  end

  def self.create(player_names)
    @current_game = Game.new(player_names)
  end
end
