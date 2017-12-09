class Game

  attr_reader :player, :computer

  RULES = {
    :rock => {:paper => :paper, :scissors => :rock},
    :paper => {:rock => :paper, :scissors => :scissors},
    :scissors => {:rock => :rock, :paper => :scissors}
    }

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def play
    RULES[@player.choice][@computer.choice]
  end

  def winner
    return :draw if @player.choice == @computer.choice
    return @player if play == @player.choice
    return @computer if play == @computer.choice
  end

end
