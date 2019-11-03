class Game
  attr_reader :player_1, :player_2

  RULES = { 
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def result
    if @player_1.selection == @player_2.selection
      :draw
    elsif RULES[@player_1.selection] == @player_2.selection
      :win
    else
      :lose
    end
  end
  
end
