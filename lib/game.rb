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

  def result
    RULES[@player.choice.to_sym][@computer.choice]
  end

  def winner
    return :draw if @player.choice == @computer.choice
    return @player if result == @player.choice
    return @computer if result == @computer.choice
  end

  def print_winner
    return "Draw!" if winner == :draw
    return @computer.name if winner == @computer
    return @player.name if winner == @player
  end

end
