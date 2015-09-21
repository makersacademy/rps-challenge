require_relative 'player.rb'
require_relative 'computer.rb'

class Game
  attr_reader :player1, :player2

  WINNER = {rock: [:scissors, :lizard],
            scissors: [:paper, :lizard],
            paper: [:spock, :rock],
            spock: [:rock, :scissors],
            lizard: [:paper, :spock]}

  def initialize(playerklass, opponentklass)
    @player1  = playerklass.new
    @player2  = opponentklass.new
  end

  def result
    return "Draw" if draw?
    win? ? "Player 1 Win's" : "Player 1 Loses"
  end

  private

  def draw?
    @player_2_selection = player2.selection
    player1.selection == @player_2_selection
  end

  def win?
    WINNER[player1.selection].include?(@player_2_selection)
  end
end
