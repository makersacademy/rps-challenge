class Computer

attr_reader :choice

  def initialize
    @choice = random_choice
  end

  def random_choice
    ["rock", "paper", "scissors"].sample
  end

end
