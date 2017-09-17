require_relative 'computer'
require_relative 'player'

class Game

  WEAPONS = [:rock, :paper, :scissors]

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  attr_reader :player_1, :player_2, :player_1_score, :player_2_score

  def initialize(player_1, player_2 = Computer.new)
    @player_1 = player_1
    @player_2 = player_2
    @player_1_score = 0
    @player_2_score = 0
    @rounds = 0
  end

  def result
    return 'draw' if @player1.weapon == @player2.weapon
    if RULES[@player_1.weapon] == @player_2.weapon
      @player_1_score += 1
      @rounds += 1
      @player_1
    else
      @player_2_score +=1
      @rounds +=1
      @player_2
    end
  end

end
