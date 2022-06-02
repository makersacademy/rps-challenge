class Game
  attr_reader :comp_choice, :player_1
  
  def initialize(player_1)
    @player_1 = player_1
    @comp_choice = ""
  end

  def ai_choice
    # 1 = Rock, 2 = Paper, 3 = Scissors
    @comp_choice = ['rock', 'paper', 'scissors'].sample
  end

  def get_player_choice
    @player_1.choice
  end
end