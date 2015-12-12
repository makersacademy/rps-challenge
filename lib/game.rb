class Game
  attr_reader :players, :current_turn

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1
  end

  def first_player_name
    players.first.name
  end

  def second_player_name
    players.last.name
  end

  def current_turn_name
    current_turn.name
  end

  def switch
    @current_turn = players.find { |player| player != current_turn }
  end
end
