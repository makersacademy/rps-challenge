class Game
  attr_reader :p1_choice, :player_1, :current_player, :p2_choice
  
  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def ai_choice
    # 1 = Rock, 2 = Paper, 3 = Scissors
    @comp_choice = ['rock', 'paper', 'scissors'].sample
  end

  def get_player_1_choice
    player_1.choice
  end

  def get_player_2_choice
    player_2.choice
  end
end