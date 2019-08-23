class RockPaperScissors
  attr_reader :p1, :p2
  WINNERS = { 'rock' => 'scissors', 'scissors' => 'paper', 'paper' => 'rock' }

  def run
    @p1 = user_turn
    @p2 = ai_turn
    p results(@p1, @p2)
  end

  private

  def user_turn
    p "enter move: "
    gets.chomp
  end

  def ai_turn
    ['rock', 'paper', 'scissors'].sample
  end

  def results(p1, p2)
    return 'Draw!' if p1 == p2
    WINNERS[p1] == p2 ? 'Player 1 won!' : 'Player 2 won!'
  end
end
