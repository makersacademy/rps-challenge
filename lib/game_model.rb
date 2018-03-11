require_relative 'game.rb'
require_relative 'player.rb'
require_relative 'rules.rb'
require_relative 'result.rb'
require_relative 'game_finished.rb'

class Game_model
  attr_reader :player1, :player2, :result, :game, :game_finished, :round_result,
  :results_history, :final_result, :game_finished, :turn, :player1_move

  def initialize(name1, name2)
    @player1 = Player.new(name1)
    @player2 = Player.new(name2)
    @result = Result.new
    @game = Game.new(Rules.beats)
    @game_finished = false
    @turn = :player1
  end

  def move1(player1_move)
    @player1_move = player1_move
    @turn = :player2
  end

  def move2(player2_move)
    @round_result = @game.round(@player1_move, player2_move)
    @results_history = @result.add_result(@round_result)
    @final_result = @result.get_result
    @game_finished = Game_finished.check_finished(@results_history) == :end
    @turn = :player1
  end
end
