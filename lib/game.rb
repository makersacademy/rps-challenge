class Game

  attr_reader :current_player

  def initialize(player, robot)
    @players = [player, robot]
    @current_player = player
  end

end
