class Game
  attr_reader :player_choice, :computer_choice

  def initialize(player, computer)
    @player_choice = player
    @computer_choice = computer
  end

  def draw?
    player_choice == computer_choice
  end

end