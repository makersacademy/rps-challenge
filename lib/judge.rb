class Judge
  attr_reader :p1, :p1_choice, :p2, :p2_choice

  def initialize(p1, p1_choice, p2 = "Computer", p2_choice = ["Rock", "Paper", "Scissors"][rand(3)])
    @p1 = p1
    @p1_choice = p1_choice
    @p2 = p2
    @p2_choice = p2_choice
  end

  def winner
    return "Neither" if p1_choice == p2_choice
    p1_win_combinations = [
      ["Rock", "Scissors"],
      ["Paper", "Rock"],
      ["Scissors", "Paper"]
    ]
    p1_win_combinations.include?([p1_choice, p2_choice]) ? p1 : p2
  end

  def winning_move
    return p1_choice if p1_choice == p2_choice
    winner == p1 ? p1_choice : p2_choice
  end
end
