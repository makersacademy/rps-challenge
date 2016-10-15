class Game

  attr_reader :comp

  OPTIONS = [:rock, :paper, :scissors]

  def initialize(player)
    @player = player
  end

  def rock
    @comp = comp_choice
    if @comp == :rock
      "It's a draw!"
    elsif @comp == :paper
      "Sorry you lose!"
    else
      "You win!"
    end
  end

  def comp_choice
    comp_choice = OPTIONS.sample
  end



end
