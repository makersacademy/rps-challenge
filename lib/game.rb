class Game

  attr_reader :player, :winner

  def initialize(player)
    @player = player
    @winner = nil
    @robot = [:rock, :paper, :scissors].sample
  end



  def compare_rock
    if @robot == :rock
      "draw"
    elsif @robot == :paper
      @player.name
    else
      "robot"
    end
  end

end
