class Match

  attr_reader :selected_by_ai

  def initialize
  end

  def ai_selection
    @selected_by_ai = ["Rock", "Paper", "Scissors"].sample
  end
end

