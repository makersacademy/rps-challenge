class Game(player_name)
  attr_reader :player_name
  def initialize
    @player_name = player_name
  end 

  def register_name_before_play
    @player_name
  end 
end 