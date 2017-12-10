class Game

  attr_reader :player, :computer

  RULES = {
    :rock => {:paper => :paper, :scissors => :rock, :rock => :draw},
    :paper => {:rock => :paper, :scissors => :scissors, :paper => :draw},
    :scissors => {:rock => :rock, :paper => :scissors, :scissors => :draw}
    }

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def result
    RULES[@player.choice][@computer.choice]
  end

  def winner
    return :draw if result == :draw
    return @player if result == @player.choice
    return @computer if result == @computer.choice
  end

  def print_winner
    return "Draw!" if winner == :draw
    return @computer.name + " won!" if winner == @computer
    return @player.name + " won!" if winner == @player
  end

end
