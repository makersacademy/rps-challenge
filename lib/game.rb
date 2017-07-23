class Game

  def initialize(player_one, player_two)
    @players = [player_one, player_two]
  end

  def player_one
    @players.first
  end

  def player_two
    @players.last
  end
end
