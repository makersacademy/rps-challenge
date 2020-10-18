class Game

  def initialize(player, computer)
    @player = player
    @computer = computer
    @tie = nil
  end

  def rps(player_choice, computer_choice)
    return @player.name if player_choice == 'Rock' && computer_choice == 'Scissors'
    return @player.name if player_choice == 'Paper' && computer_choice == 'Rock'
    return @player.name if player_choice == 'Scissors' && computer_choice == 'Paper'
    return @tie = 'Tie' if player_choice == computer_choice
    
    return "Computer"
  end

end
