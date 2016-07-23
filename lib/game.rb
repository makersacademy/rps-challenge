class Game
  attr_reader :player
  attr_accessor :choice

  def initialize(player)
    @player = player
    @choice = nil
  end

end
