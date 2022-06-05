class ComputerChoice
  def initialize
    @choices = ["Rock", "Paper", "Scissors"]
  end

  def get_choice
    @choices.sample
  end
end

