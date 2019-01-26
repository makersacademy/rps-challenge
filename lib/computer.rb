require_relative 'player.rb'

class Computer < Player
  def initialize
    @name = "computer"
  end

  def choose_move
    @move = [:rock, :paper, :scissors].sample
  end

end
