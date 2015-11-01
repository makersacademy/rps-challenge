class Computer

attr_reader :comp_choice

  def initialize
    @comp_choice = ["rock", "paper", "scissors"].sample
  end
end
