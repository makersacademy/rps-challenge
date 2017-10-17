

class Player
attr_reader :player_name

  def initialize(player_name, player_choice)
    @player_name = player_name
    @player_choice = player_choice
  end

  def player_choice
    @player_choice
  end

end
