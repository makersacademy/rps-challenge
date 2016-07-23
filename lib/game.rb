class Game

  attr_reader :player_name, :player_selection, :computer_selection

  def initialize(player_name, player_selection, computer_selection)
    @player_name = player_name
    @player_selection = player_selection
    @computer_selection = computer_selection
  end

end
