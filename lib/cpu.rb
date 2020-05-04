class Cpu

  attr_reader :move

  def initialize
    @move = ["Scissors", "Paper", "Rock"].sample
  end

end