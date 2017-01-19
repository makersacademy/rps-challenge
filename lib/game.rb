require './lib/player.rb'
require './lib/computer.rb'

class Game

  attr_reader :player1, :player2

  def initialize(player1, player2)
    #@game = Game.new
    @player1 = player1
    @player2 = player2
  end

  def win?
      (player1.weapon == :rock && player2.weapon == :scissors) ||
      (player1.weapon == :paper && player2.weapon == :rock) ||
      (player1.weapon == :scissors && player2.weapon == :paper)
  end

  def draw?
      player1.weapon == player2.weapon
  end

end
