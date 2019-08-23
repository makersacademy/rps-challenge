class RockPaperScissors
  attr_reader :name
  def initialize
    @name = 'Rock Paper Scissors'
    @moves = ['Rock', 'Paper', 'Scissors']
    @winners = {
      'Rock' => ['Scissors'],
      'Scissors' => ['Paper'],
      'Paper' => ['Rock']
    }
  end

  def user_move(move)
    move
  end

  def ai_move
    @moves.sample
  end

  def results(player_1, player_2)
    return 'Draw!' if player_1 == player_2
    @winners[player_1].include?(player_2) ? 'You won!' : 'You lost!'
  end
end
