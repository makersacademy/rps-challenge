class Game

  attr_reader :player_1_name, :player_1_choice, :computer_choice

  def initialize(player_1_name, player_1_choice, computer_choice)
    @player_1_name = player_1_name
    @player_1_choice = player_1_choice
    @computer_choice = computer_choice
  end
end
