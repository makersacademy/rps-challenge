class Computer

  attr_reader :moves

  def initialize
    @moves = [:Rock, :Paper, :Scissors]
  end

  def move
    @moves[rand(0..2)]
  end
end