require_relative './player.rb'
require_relative './move_list.rb'
require_relative './rules_list.rb'

class Game
  attr_reader :player1, :player2, :result, :current_player

  def initialize(player_names, player_class = Player, list_class = MoveList)
    @rules_list = RulesList.new
    @player1 = player_class.new(player_names[0])
    @player2 = player_class.new(player_names[1])
    @move_list = list_class.new
    @current_player = player1
  end

  def make_move(move)
    if @move1.nil? 
      @move1 = move
    else
      @move2 = move
    end
    @move_list.store_move(move)
    set_current_player
  end

  def moves_complete?
    @move_list.full?
  end

  def decide_result
    p @rules_list.rule([@move1, @move2])
    @result = @move_list.resolve_moves([player1.name, player2.name])
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

  private

  def set_current_player
    @current_player = @current_player == player1 ? player2 : player1
  end
end
