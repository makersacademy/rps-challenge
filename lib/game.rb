class Game
  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def result(player, computer)
    case player
    when computer
      "draw"
    when "rock"
      rock_vs(computer)
    when "paper"
      paper_vs(computer)
    when "scissors"
      scissors_vs(computer)
    end
  end

  private

  def rock_vs(computer)
    computer == "scissors" ? "win" : "lose"
  end

  def paper_vs(computer)
    computer == "rock" ? "win" : "lose"
  end

  def scissors_vs(computer)
    computer == "paper" ? "win" : "lose"
  end

end
