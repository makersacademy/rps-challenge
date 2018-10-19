class Player
  attr_reader :player_names

  def initialize(player_name, player_choice)
    @player_name = player_name
    @player_choice = player_choice
  end

  def choice
    @player_choice
  end
end
