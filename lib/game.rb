class Game

  attr_reader :human, :puter

  def initialize(human, puter)
    @human = human
    @puter = puter
  end

  def decider
    mapper = { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }
    if @human == @puter
      "IT'S A DRAW!"
    elsif mapper[@human] == @puter
      "YOU HAVE WON!"
    else
      "YOU LOST... COMPUTER HAS WON!"
    end
  end

end
