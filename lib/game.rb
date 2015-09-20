require_relative 'player.rb'
require_relative 'computer.rb'
require_relative 'result_calc.rb'

class Game
  include ResultCalc
  attr_reader :player1, :player2

  def initialize(playerklass, opponentklass)
    @player1  = playerklass.new
    @player2  = opponentklass.new
  end

  def result
    if player1.selection == :rock
      @a = rock[player2.selection]
    elsif player1.selection == :paper
      @a = paper[player2.selection]
    elsif player1.selection == :scissors
      @a = scissors[player2.selection]
    elsif player1.selection == :lizard
      @a = lizard[player2.selection]
    else
      @a = spock[player2.selection]
    end
  end
end
