class RandomRps
  attr_reader :choice

  def initialize(choice = Choices.new)
    @choice = choice
  end

  def sample_rps_array
    @choice.rps_array.sample
  end

  def rock_paper_scissors(player1, player2)
    if player1 == player2
      "draw"
    elsif player1 == "Rock" && player2 == "Scissors"
      "Player 1 wins"
    elsif player1 == "Scissors" && player2 == "Paper"
      "Player 1 wins"
    elsif player1 == "Paper" && player2 == "Rock"
      "Player 1 wins"
    else
      "Player 2 wins"
    end
  end
end
