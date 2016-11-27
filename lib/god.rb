class God

  attr_reader :choices

  def choice
    @choices = ["Rock", "Paper", "Scissors"].sample
  end
end
