class Computer

  RPS = [:rock, :paper, :scissors]

  attr_reader :computer_choice

  def initialize
    @computer_choice
  end

  def computer_move
    @computer_choice = RPS.sample
  end
end
