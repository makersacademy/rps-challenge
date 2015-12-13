class Game
  attr_reader :player, :computer

  RESULT = {
    'Rock' => {'Rock' => 0, 'Paper' => -1, 'Scissors' => 1},
    'Paper' => {'Rock' => 1, 'Paper' => 0, 'Scissors' => -1},
    'Scissors' => {'Rock' => -1, 'Paper' => 1, 'Scissors' => 0}
  }

  def initialize(player_klass, computer_klass)
    @player = player_klass
    @computer = computer_klass
  end

  def winner(player, player2)
    results_code = RESULT[player.choice][player2.choice]
    return "It's a draw" if results_code == 0
    results_code < 0 ? player2.name : player.name
  end
end
