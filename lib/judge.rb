class Judge
  def initialize(p1_choice, p2_choice)
    @p1_choice = p1_choice
    @p2_choice = p2_choice
  end

  def outcome
    if @p1_choice == @p2_choice
      "It's a tie!"
    end
  end
end
