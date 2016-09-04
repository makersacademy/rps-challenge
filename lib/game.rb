require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player_1, :player_2, :rules

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @rules = {  rock: :scissors,
                paper: :rock,
                rscissors: :paper }
  end

  def self.create(player_1,player_2)
    @game = Game.new(player_1,player_2)
  end

  def fight
    return :draw if player_1.choice == player_2.choice
    @rules[player_1.choice] == player_2.choice ? :player_1_won : :player_2_won
  end

  def self.instance
    @game
  end

end
