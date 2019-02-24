class RPS
  attr_reader :player_name 

  def initialize(player_name)
    @player_name = Game.new(player_name)
  end
end
