require_relative 'computer'
require_relative 'player'

class Game

  WEAPONS = [:rock, :paper, :scissors]

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  attr_reader :winner, :player_1, :player_2

  def initialize(player_1, player_2 = Computer.new)
    @player_1 = player_1
    @player_2 = player_2
    @winner = nil
  end

  def result
    return 'draw' if @player1.weapon == @player2.weapon
    RULES[@player_1.weapon] == @player_2.weapon ? @player_1 : @player_2
  end

end
