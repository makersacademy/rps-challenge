class Player

  attr_reader :name
  attr_accessor :move

  def initialize(name)
    @name = name
    @move = nil
  end

  def play_move
    @move = ["Rock", "Paper", "Scissors"].sample
  end
end