class Player

  attr_reader :name
  attr_accessor :wins, :losses, :draws

  def initialize(player_name)
    @name = player_name
    @wins = 0
    @losses = 0
    @draws = 0
  end

end
