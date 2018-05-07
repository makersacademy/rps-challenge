class Computer
  attr_reader :random_move

  def initialize
    @random_move = ['ROCK', 'PAPER', 'SCISSORS'].sample
  end
end
