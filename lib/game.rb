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
      "#{@player.name} wins"
    else
      "robot wins"
    end
  end

  def compare_paper
    if @robot == :rock
      "robot wins"
    elsif @robot == :paper
      "draw"
    else
      "#{@player.name} wins"
    end
  end

  def compare_scissors
    if @robot == :rock
      "robot wins"
    elsif @robot == :paper
      "#{@player.name} wins"
    else
      "draw"
    end
  end

end
