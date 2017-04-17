require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player, :computer

  RULES = {
    rock:    :paper,
    paper:   :scissor,
    scissor: :rock
    }

  def initialize(hand)
    @player = Player.new(hand)
    @computer = Computer.new
  end

  def play
    return :draw if @player.hand == @computer.hand
    return :win if rules(@computer.hand) == @player.hand
    return :lose if rules(@player.hand) == @computer.hand
  end

  private
  def rules(hand)
    RULES[hand]
  end
end
