require_relative 'game'
class Outcome
  attr_accessor :game, :player_choice, :player_name_1, :player_name_2

  def self.create
    @outcome = Outcome.new
  end

  def self.instance
    @outcome
  end

  def evaluate(player = @player_choice, computer = @game)
    if player == "Rock" && computer == "Scissors"
      "YOU WIN"
    elsif player == "Paper" && computer == "Rock"
      "YOU WIN"
    elsif player == "Scissors" && computer == "Paper"
      "YOU WIN"
    elsif player == computer
      "IT'S A DRAW"
    else
      "YOU LOSE"
  end
end

end
