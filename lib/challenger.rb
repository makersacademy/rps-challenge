class Player 
  attr_reader :player_name
  attr_reader :play

  def initialize(player_name = nil)
    @player_name = player_name
    @play = play
    @play = nil
  end
end