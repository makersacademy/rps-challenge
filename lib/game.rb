class Game
  attr_reader :player_choice, :computer_choice

  def initialize(player, computer)
    @player_choice = player
    @computer_choice = computer
    @results = {"rock" => "scissors", "scissors" => "paper",
      "paper" => "rock"}
  end

  def draw?
    player_choice == computer_choice
  end

  def player_wins?
    @results[player_choice] ==  computer_choice
  end

end