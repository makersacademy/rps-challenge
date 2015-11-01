class Computer

attr_reader :move_choice

  def initialize
    @move_choice = ["rock", "paper", "scissors"].sample
  end
end
