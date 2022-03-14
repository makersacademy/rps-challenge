class Winner
  WIN_MATRIX = {
    "Rock" => "Scissors",
    "Paper" => "Rock",
    "Scissors" => "Paper"
  }

  def initialize(player, computer)
    @player = player
    @computer = computer
  end
  
  def determine
    return @player if player_wins?
    return @computer if computer_wins?
  end

  private

  def player_wins?
    WIN_MATRIX[@player.move] == @computer.move
  end

  def computer_wins?
    WIN_MATRIX[@computer.move] == @player.move
  end
end