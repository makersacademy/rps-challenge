class Game

  WEAPONS = ["rock", "paper", "scissors"]

  RULES = { "rock" => "scissors",
            "paper" => "rock",
            "scissors" => "paper" }

  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def result
    if RULES[@player.choice] == @computer.choice
      return 'winner'
    elsif RULES[@computer.choice] == @player.choice
      return 'loser'
    else
      return 'draw'
    end
  end

end
