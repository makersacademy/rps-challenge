class Game

  def initialize(player)
    @players = [player]
  end

  def player
    @players.first
  end
end
