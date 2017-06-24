class Computer

attr_reader :move

  def initialize
    @move = random_choice
  end

private
  def random_choice
    ["rock", "paper", "scissors"].sample
  end
end
