require_relative 'player'
require_relative 'computer'

class Game

  CHOICES = [:rock, :paper, :scissors]

  RULES = {
    :rock     => {:rock => :draw, :paper => :lose, :scissors => :win},
    :paper    => {:rock => :win, :paper => :draw, :scissors => :lose},
    :scissors => {:rock => :lose, :paper => :win, :scissors => :draw}
  }

  attr_reader :player, :opponent

  def self.instance
    @game
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def initialize(player = Player.new, opponent = Computer.new)
    @player = player
    @opponent = opponent
  end

  def result
    RULES[player.choice][opponent.choice]
  end

end
