class Computer

RPS = ["Rock", "Paper", "Scissors"]

attr_reader :computer_choice

  def initialize
    @computer_choice
  end

  def computer_move
    @computer_choice = RPS.sample
  end
end
