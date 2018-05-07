class Game

  attr_reader :moves

  def initialize
    @moves = ["Rock", "Paper", "Scissors"]
  end

  def cpu_move
    @moves[Kernel.rand(2)]
  end

  def self.create
    @game = Game.new
  end

  def self.instance
    @game
  end

end
