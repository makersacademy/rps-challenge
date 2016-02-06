class Game
  attr_reader :player_choice, :computer_choice

  def initialize(player, computer)
    @player_choice = player
    @computer_choice = computer
    @results = {"rock" => ["blunts", "scissors"],
      "scissors" => ["cut", "paper"],
      "paper" => ["covers", "rock"]}
  end

  def draw?
    player_choice == computer_choice
  end

  def player_wins?
    @results[player_choice][1] ==  computer_choice
  end

  def verb
    if player_wins?
      return @results[player_choice][0]
    end
  end

end