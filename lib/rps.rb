class RockPaperScissors
  attr_reader :p1, :p2, :name

  def initialize(name)
    @name = name
    @winners = { 'Rock' => ['Scissors'], 'Scissors' => ['Paper'], 'Paper' => ['Rock'] }
  end

  def user_move(move)
    @p1 = move
  end

  def ai_move
    @p2 = ['Rock', 'Paper', 'Scissors'].sample
  end

  def results
    return 'Draw!' if @p1 == @p2
    @winners[@p1].include?(@p2) ? 'You won!' : 'You lost!'
  end
end
