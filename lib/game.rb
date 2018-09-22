require_relative 'ai'
require_relative 'rps_referee'

class Game

  attr_reader :players, :referee

  def initialize(player1, player2 = AI.new, referee = RPSReferee.new)
    @players = [player1, player2]
    @referee = referee
  end

  def store_move(selected_move)
    @players.first.store_move(selected_move)
  end

  def who_won
    moves = [@players.first.move, @players.last.move]
    decision = referee.decision(moves)
    return decision if decision == :Draw
    @players[decision]
  end
end
