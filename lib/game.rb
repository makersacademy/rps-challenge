class Game
  def initialize(player, computer)
    @player = player
    @computer = computer
  end 

  def result   
    return "It is a draw!" if draw?       
    return "You win!" if player_wins?
    return "Computer wins!"       
  end

  private

  def draw?
    @player.weapon == @computer.weapon
  end

  def player_wins?
    @player.weapon == "Rock" && @computer.weapon == "Scissors" ||
    @player.weapon == "Paper" && @computer.weapon == "Rock" ||
    @player.weapon == "Scissors" && @computer.weapon == "Paper"
  end
  
end
