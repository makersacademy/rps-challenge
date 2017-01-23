class RockPaperScissors
  CHOICES = [:Rock, :Paper, :Scissors]

  def initialize
    rock_paper_scissors
  end

  def rock_paper_scissors
    CHOICES.sample
  end
end
