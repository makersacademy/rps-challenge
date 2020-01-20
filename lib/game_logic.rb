class Game

  attr_reader :player_1, :computer

  def initialize(player_1:, computer:)
    @player_1 = player_1
    @computer = computer
  end

  def winner
    if game_rules[player_1.to_sym].include? @computer
      "= Player 1 wins!"
    elsif game_rules[computer.to_sym].include? @player_1
      "= You lose!"
    else
      "= It is a draw"
    end
  end


  def game_rules
    {
    Rock: ["Scissors"],
    Paper: ["Rock"],
    Scissors: ["Paper"]
  }
  end


end
