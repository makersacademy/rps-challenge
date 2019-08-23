class RockPaperScissors
  attr_reader :name
  def initialize
    @name = 'Rock Paper Scissors'
    @moves = ['Rock', 'Paper', 'Scissors']
    @winners = { 'Rock' => ['Scissors'], 'Scissors' => ['Paper'], 'Paper' => ['Rock'] }
  end

  def user_move(move)
    move
  end

  def ai_move
    @moves.sample
  end

  def results(p1, p2)
    return 'Draw!' if p1 == p2
    @winners[p1].include?(p2) ? 'You won!' : 'You lost!'
  end
end
