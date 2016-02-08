class Computer

  attr_reader :moves

  def initialize
    @moves = [:Rock, :Paper, :Scissors]
  end

  def move
  @moves[num_gen]
  end

  private

  def num_gen
    rand(0..2)
  end
end