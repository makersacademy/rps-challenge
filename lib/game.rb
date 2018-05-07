class Game

  attr_reader :moves

  def initialize
    @moves = ["Rock", "Paper", "Scissors"]
  end

  def cpu_move
    @moves.sample
  end

  def self.create
    @game = Game.new
  end

  def self.instance
    @game
  end

end
