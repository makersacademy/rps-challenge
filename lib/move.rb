class Move

  attr_reader :random

  def initialize
    @random = ['ROCK', 'PAPER', 'SCISSORS'].sample
  end

end
