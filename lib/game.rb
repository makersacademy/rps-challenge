class Game

  attr_reader :comp

  OPTIONS = [:rock, :paper, :scissors]

  def rock
    @comp = comp_choice
    if @comp == :rock
      "drew"
    elsif @comp == :paper
      "lost"
    else
      "won!"
    end
  end

  def comp_choice
    comp_choice = OPTIONS.sample
  end



end
