class Game
  attr_reader :player, :result

  def initialize(player_klass)
    @player = player_klass
    @result = {
      'Rock' => {'Rock' => 0, 'Paper' => -1, 'Scissors' => 1},
      'Paper' => {'Rock' => 1, 'Paper' => 0, 'Scissors' => -1},
      'Scissors' => {'Rock' => -1, 'Paper' => 1, 'Scissors' => 0}
    }
  end

  def winner(player, player2)
    code = result[player.choice][player2.choice]
    return "It's a draw" if code == 0
    code < 0 ? player2.name : player1.name
  end
end
