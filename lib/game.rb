class Game

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def rps(player_choice, computer_choice)
    return @player.name if player_choice == 'Rock' && computer_choice == 'Scissors'
  end

end