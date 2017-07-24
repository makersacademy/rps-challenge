class Player

  attr_reader :name, :move

  def initialize(name)
    @name = name
    @move = nil
  end

  def choose_move(move)
    @move = move
  end

  def computer_move
    @move = ["Rock", "Paper", "Scissors", "Spock", "Lizard"].sample
  end

end
