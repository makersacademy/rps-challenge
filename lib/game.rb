
class Game

  # attr_reader

  def initialize(player_1, player_2=player_klass)
    @player_1 = player_1
    @player_2 = player_2
  end

  def outcome
    (@p1_value-@p2_value)%CHOICES
  end

  def check_for_draw
    outcome == 0 ? draw : winner
  end

  def draw
    "it's a draw!"
  end

  def winner
    outcome.odd? ? player1_name : player2_name
  end

end
