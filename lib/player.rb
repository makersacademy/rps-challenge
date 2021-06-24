class Player
  attr_reader :player_name, :choice

  def initialize(player_name, choice)
    @player_name = player_name
    @choice = choice
  end  
end
  