class Judge
  def initialize(p1_choice, p2_choice)
    @p1_choice = p1_choice
    @p2_choice = p2_choice
  end

  RULES = { "Rock" => "Scissors",
            "Paper" => "Rock",
            "Scissors" => "Paper" }

  def outcome
    if RULES[@p1_choice] == @p2_choice
      "Player 1"
    elsif RULES[@p2_choice] == @p1_choice
      "Player 2"
    elsif @p1_choice == @p2_choice
      "It's a tie!"
    end
  end
end
