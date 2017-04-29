class Game

  def initialize(player, computer)
    @players = [player, computer]
  end

  def player
    @players.first
  end

  def computer
    @players.last
  end
end
