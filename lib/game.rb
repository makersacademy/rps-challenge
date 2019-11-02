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



end
