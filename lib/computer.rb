class Computer
  attr_reader :moves

  def initialize
    @moves = ["Rock", "Paper", "Scissors"]
  end

  def play
    @moves[rand(3)]
  end
end
