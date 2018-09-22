require 'ai'

class Game

  attr_reader :players

  def initialize(player1, player2 = AI.new)
    @players = [player1, player2]
  end

  def store_move(selected_move)
    @players.first.store_move(selected_move)
  end

  def who_won
    player1 = @players.first
    player2 = @players.last
    move1 = player1.move
    move2 = player2.move
    return :Draw if draw?(move1, move2)
    return player1 if player1_wins?(move1, move2)
    player2
  end

  private

  def draw?(move1, move2)
    move1 == move2
  end

  def player1_wins?(move1, move2)
    return true if move1 == :rock && move2 == :scissors
    return true if move1 == :scissors && move2 == :paper
    return true if move1 == :paper && move2 == :rock
    false
  end
end
