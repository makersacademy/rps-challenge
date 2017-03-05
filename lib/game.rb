class Game

  attr_reader :player_selection, :computer_select

  def initialize(player_selection = nil)
    @player_selection = player_selection
  end

  def result
    @computer_select = computer_selection()
    return "DRAW!" if @computer_select == @player_selection
    arr = [@player_selection, @computer_select]
    if arr == [:rock, :scissors]
      "YOU WIN!"
    elsif arr == [:scissors, :paper]
      "YOU WIN!"
    elsif arr == [:paper, :rock]
      "YOU WIN!"
    else
      "YOU LOSE!"
    end
  end

  RPS_TOOLS = [:rock, :paper, :scissors] #is this pointless here?

  def computer_selection
    RPS_TOOLS.sample
  end

end
