require_relative 'player'
require_relative 'computer'

class Game
  attr_reader :beats, :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @beats = {  rock: :scissors,
                paper: :rock,
                scissors: :paper  }
  end


  def fight(player1, player2)
      return :draw if player1.weapon == player2.weapon
      @beats[player1.weapon] == player2.weapon ? :player1_win : :player2_win
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end
end
