class Game
  attr_reader :comp_choice, :player_1
  
  def initialize(player_1)
    @player_1 = player_1
    @comp_choice = 1
  end

  def ai_choice
    # 1 = Rock, 2 = Paper, 3 = Scissors
    @comp_choice = (1..3).sample
  end
end