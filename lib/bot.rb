class Bot
  attr_reader :name, :move

  def initialize
    @name = "Bot"
    @moves = ["Rock", "Paper", "Scissors"]
    @move = nil
  end

  def make_move
    @move = @moves.sample
  end
end
