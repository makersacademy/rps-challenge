class Game

  attr_reader :human, :puter

  def initialize(human, puter)
    @human = human
    @puter = puter
  end

  def decider
    mapper = { 's' => 'p', 'p' => 'r', 'r' => 's' }
    if @human == @puter
      "Draw!"
    elsif mapper[@human] == @puter
      "Player 1 won!"
    else
      "Player 2 won!"
    end
  end

end
