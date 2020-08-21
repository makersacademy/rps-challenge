require_relative 'player'
require_relative 'computer'

class Game

  def initialize(player,opponent)
    @player = player
    @opponent = opponent
  end

  attr_reader :player, :opponent

  def draw?
    @player.choice == @opponent.choice
  end

  def win?
    'RSPR'.include?(@player.choice[0]+@opponent.choice[0])
  end

end
