class Game
  attr_accessor :player_1, :player_2

  def initialize
    @player_1 = Player.new
  end
end
