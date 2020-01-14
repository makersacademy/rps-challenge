class Game
  def initialize(player_1, computer)
    @players = [player_1, computer]
  end
  def player_1
    @players.first
  end
  def computer
    @players.last
  end

end
