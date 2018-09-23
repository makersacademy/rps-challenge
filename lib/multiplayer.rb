class MultiplayerGame
  attr_reader :player1, :player2
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def players
    [player1, player2]
  end

  def flip_coin
    @first_player = players.sample
  end

  def second_player
    @first_player == player1 ? player2 : player1
  end

end
