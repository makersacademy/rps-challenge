class Computer

  def initialize
    random
  end

  def choice
    @computer_choice
  end

  private

  def random
    @computer_choice = ["rock", "paper", "scissors"].sample
  end
end
