class ComputerChoice
  def initialize
    @choices = ["Rock", "Paper", "Scissors"]
  end

  def random_index
    [0, 1, 2].sample
  end

  def get_choice
    @choices[random_index]
  end
end

