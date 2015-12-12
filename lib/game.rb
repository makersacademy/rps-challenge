class Game
  attr_reader :players

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def first_player_name
    players.first.name
  end

  def second_player_name
    players.last.name
  end
end
