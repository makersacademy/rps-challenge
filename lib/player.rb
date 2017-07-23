class Player

  DEFAULT_SCORE = 0
  attr_reader :name, :score, :move

  def initialize(name, score = DEFAULT_SCORE)
    @name = name
    @score = score
    @move = nil
  end

  def choose_move(move)
    @move = move
  end

  def computer_move
    @move = ["Rock", "Paper", "Scissors", "Spock", "Lizard"].sample
  end

end
