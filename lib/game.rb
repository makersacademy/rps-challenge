class Game
  attr_reader :player1, :player2

  def initialize(player1 = nil, player2 = nil)
    @player1 = player1
    @player2 = player2
    @rules = {
      'Scissors' => 'Rock',
      'Paper' => 'Scissors',
      'Rock' => 'Paper'
    }
  end

  def results(player1, player2)
    if player1 == player2
      'tie'
    elsif @rules[player2].include?(player1)
      'win'
    else
      'lose'
    end

  end
end
