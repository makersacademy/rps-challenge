require_relative 'computer'

class Game
  OPTIONS = [:rock, :paper, :scissors]

  RULES = {
  :rock     => {:rock => :draw, :paper => :lose, :scissors => :win},
  :paper    => {:rock => :win, :paper => :draw, :scissors => :lose},
  :scissors => {:rock => :lose, :paper => :win, :scissors => :draw}
  }

  attr_reader :player, :computer

  def initialize(player)
    @player = player
    @computer = Computer.new
  end

  def self.create(player1)
    @game = Game.new(player1)
  end

  def self.instance
    @game
  end

  def result
    RULES[@player.choice][@computer.choice]
  end

end
