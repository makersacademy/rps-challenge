class Game
  def initialize(player_name)
    @player_name = player_name
  end

  def computer_choice
    ["Rock","Paper","Scissors"].sample
  end


end
